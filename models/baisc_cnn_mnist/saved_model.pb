¦	
¸
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258éÞ

sequential_1/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namesequential_1/conv2d_4/kernel

0sequential_1/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_4/kernel*&
_output_shapes
: *
dtype0

sequential_1/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namesequential_1/conv2d_4/bias

.sequential_1/conv2d_4/bias/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_4/bias*
_output_shapes
: *
dtype0

sequential_1/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*-
shared_namesequential_1/conv2d_5/kernel

0sequential_1/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_5/kernel*&
_output_shapes
: @*
dtype0

sequential_1/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namesequential_1/conv2d_5/bias

.sequential_1/conv2d_5/bias/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_5/bias*
_output_shapes
:@*
dtype0

sequential_1/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*,
shared_namesequential_1/dense_2/kernel

/sequential_1/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_2/kernel* 
_output_shapes
:
À*
dtype0

sequential_1/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/dense_2/bias

-sequential_1/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_2/bias*
_output_shapes	
:*
dtype0

sequential_1/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*,
shared_namesequential_1/dense_3/kernel

/sequential_1/dense_3/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_3/kernel*
_output_shapes
:	
*
dtype0

sequential_1/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namesequential_1/dense_3/bias

-sequential_1/dense_3/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_3/bias*
_output_shapes
:
*
dtype0
|
training_2/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *%
shared_nametraining_2/Adam/iter
u
(training_2/Adam/iter/Read/ReadVariableOpReadVariableOptraining_2/Adam/iter*
_output_shapes
: *
dtype0	

training_2/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nametraining_2/Adam/beta_1
y
*training_2/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/beta_1*
_output_shapes
: *
dtype0

training_2/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nametraining_2/Adam/beta_2
y
*training_2/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining_2/Adam/beta_2*
_output_shapes
: *
dtype0
~
training_2/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nametraining_2/Adam/decay
w
)training_2/Adam/decay/Read/ReadVariableOpReadVariableOptraining_2/Adam/decay*
_output_shapes
: *
dtype0

training_2/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nametraining_2/Adam/learning_rate

1training_2/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining_2/Adam/learning_rate*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
À
.training_2/Adam/sequential_1/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.training_2/Adam/sequential_1/conv2d_4/kernel/m
¹
Btraining_2/Adam/sequential_1/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOp.training_2/Adam/sequential_1/conv2d_4/kernel/m*&
_output_shapes
: *
dtype0
°
,training_2/Adam/sequential_1/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,training_2/Adam/sequential_1/conv2d_4/bias/m
©
@training_2/Adam/sequential_1/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOp,training_2/Adam/sequential_1/conv2d_4/bias/m*
_output_shapes
: *
dtype0
À
.training_2/Adam/sequential_1/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*?
shared_name0.training_2/Adam/sequential_1/conv2d_5/kernel/m
¹
Btraining_2/Adam/sequential_1/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOp.training_2/Adam/sequential_1/conv2d_5/kernel/m*&
_output_shapes
: @*
dtype0
°
,training_2/Adam/sequential_1/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,training_2/Adam/sequential_1/conv2d_5/bias/m
©
@training_2/Adam/sequential_1/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOp,training_2/Adam/sequential_1/conv2d_5/bias/m*
_output_shapes
:@*
dtype0
¸
-training_2/Adam/sequential_1/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*>
shared_name/-training_2/Adam/sequential_1/dense_2/kernel/m
±
Atraining_2/Adam/sequential_1/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp-training_2/Adam/sequential_1/dense_2/kernel/m* 
_output_shapes
:
À*
dtype0
¯
+training_2/Adam/sequential_1/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+training_2/Adam/sequential_1/dense_2/bias/m
¨
?training_2/Adam/sequential_1/dense_2/bias/m/Read/ReadVariableOpReadVariableOp+training_2/Adam/sequential_1/dense_2/bias/m*
_output_shapes	
:*
dtype0
·
-training_2/Adam/sequential_1/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*>
shared_name/-training_2/Adam/sequential_1/dense_3/kernel/m
°
Atraining_2/Adam/sequential_1/dense_3/kernel/m/Read/ReadVariableOpReadVariableOp-training_2/Adam/sequential_1/dense_3/kernel/m*
_output_shapes
:	
*
dtype0
®
+training_2/Adam/sequential_1/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+training_2/Adam/sequential_1/dense_3/bias/m
§
?training_2/Adam/sequential_1/dense_3/bias/m/Read/ReadVariableOpReadVariableOp+training_2/Adam/sequential_1/dense_3/bias/m*
_output_shapes
:
*
dtype0
À
.training_2/Adam/sequential_1/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.training_2/Adam/sequential_1/conv2d_4/kernel/v
¹
Btraining_2/Adam/sequential_1/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOp.training_2/Adam/sequential_1/conv2d_4/kernel/v*&
_output_shapes
: *
dtype0
°
,training_2/Adam/sequential_1/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,training_2/Adam/sequential_1/conv2d_4/bias/v
©
@training_2/Adam/sequential_1/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOp,training_2/Adam/sequential_1/conv2d_4/bias/v*
_output_shapes
: *
dtype0
À
.training_2/Adam/sequential_1/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*?
shared_name0.training_2/Adam/sequential_1/conv2d_5/kernel/v
¹
Btraining_2/Adam/sequential_1/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOp.training_2/Adam/sequential_1/conv2d_5/kernel/v*&
_output_shapes
: @*
dtype0
°
,training_2/Adam/sequential_1/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,training_2/Adam/sequential_1/conv2d_5/bias/v
©
@training_2/Adam/sequential_1/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOp,training_2/Adam/sequential_1/conv2d_5/bias/v*
_output_shapes
:@*
dtype0
¸
-training_2/Adam/sequential_1/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*>
shared_name/-training_2/Adam/sequential_1/dense_2/kernel/v
±
Atraining_2/Adam/sequential_1/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp-training_2/Adam/sequential_1/dense_2/kernel/v* 
_output_shapes
:
À*
dtype0
¯
+training_2/Adam/sequential_1/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+training_2/Adam/sequential_1/dense_2/bias/v
¨
?training_2/Adam/sequential_1/dense_2/bias/v/Read/ReadVariableOpReadVariableOp+training_2/Adam/sequential_1/dense_2/bias/v*
_output_shapes	
:*
dtype0
·
-training_2/Adam/sequential_1/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*>
shared_name/-training_2/Adam/sequential_1/dense_3/kernel/v
°
Atraining_2/Adam/sequential_1/dense_3/kernel/v/Read/ReadVariableOpReadVariableOp-training_2/Adam/sequential_1/dense_3/kernel/v*
_output_shapes
:	
*
dtype0
®
+training_2/Adam/sequential_1/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+training_2/Adam/sequential_1/dense_3/bias/v
§
?training_2/Adam/sequential_1/dense_3/bias/v/Read/ReadVariableOpReadVariableOp+training_2/Adam/sequential_1/dense_3/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
©7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ä6
valueÚ6B×6 BÐ6
´
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	optimizer
	regularization_losses

	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
 trainable_variables
!	keras_api
R
"regularization_losses
#	variables
$trainable_variables
%	keras_api
h

&kernel
'bias
(regularization_losses
)	variables
*trainable_variables
+	keras_api
h

,kernel
-bias
.regularization_losses
/	variables
0trainable_variables
1	keras_api
Ð
2iter

3beta_1

4beta_2
	5decay
6learning_ratememfmgmh&mi'mj,mk-mlvmvnvovp&vq'vr,vs-vt
 
8
0
1
2
3
&4
'5
,6
-7
8
0
1
2
3
&4
'5
,6
-7
­
7layer_metrics

8layers
	regularization_losses
9non_trainable_variables
:metrics
;layer_regularization_losses

	variables
trainable_variables
 
hf
VARIABLE_VALUEsequential_1/conv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_1/conv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
<layer_metrics

=layers
regularization_losses
>non_trainable_variables
?metrics
@layer_regularization_losses
	variables
trainable_variables
 
 
 
­
Alayer_metrics

Blayers
regularization_losses
Cnon_trainable_variables
Dmetrics
Elayer_regularization_losses
	variables
trainable_variables
hf
VARIABLE_VALUEsequential_1/conv2d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_1/conv2d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Flayer_metrics

Glayers
regularization_losses
Hnon_trainable_variables
Imetrics
Jlayer_regularization_losses
	variables
trainable_variables
 
 
 
­
Klayer_metrics

Llayers
regularization_losses
Mnon_trainable_variables
Nmetrics
Olayer_regularization_losses
	variables
 trainable_variables
 
 
 
­
Player_metrics

Qlayers
"regularization_losses
Rnon_trainable_variables
Smetrics
Tlayer_regularization_losses
#	variables
$trainable_variables
ge
VARIABLE_VALUEsequential_1/dense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEsequential_1/dense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

&0
'1

&0
'1
­
Ulayer_metrics

Vlayers
(regularization_losses
Wnon_trainable_variables
Xmetrics
Ylayer_regularization_losses
)	variables
*trainable_variables
ge
VARIABLE_VALUEsequential_1/dense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEsequential_1/dense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

,0
-1

,0
-1
­
Zlayer_metrics

[layers
.regularization_losses
\non_trainable_variables
]metrics
^layer_regularization_losses
/	variables
0trainable_variables
SQ
VARIABLE_VALUEtraining_2/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEtraining_2/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEtraining_2/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtraining_2/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEtraining_2/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
4
5
6
 

_0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
D
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api
QO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 

`0
a1

c	variables

VARIABLE_VALUE.training_2/Adam/sequential_1/conv2d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,training_2/Adam/sequential_1/conv2d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.training_2/Adam/sequential_1/conv2d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,training_2/Adam/sequential_1/conv2d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE-training_2/Adam/sequential_1/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+training_2/Adam/sequential_1/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE-training_2/Adam/sequential_1/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+training_2/Adam/sequential_1/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.training_2/Adam/sequential_1/conv2d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,training_2/Adam/sequential_1/conv2d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.training_2/Adam/sequential_1/conv2d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,training_2/Adam/sequential_1/conv2d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE-training_2/Adam/sequential_1/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+training_2/Adam/sequential_1/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE-training_2/Adam/sequential_1/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+training_2/Adam/sequential_1/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
©
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1sequential_1/conv2d_4/kernelsequential_1/conv2d_4/biassequential_1/conv2d_5/kernelsequential_1/conv2d_5/biassequential_1/dense_2/kernelsequential_1/dense_2/biassequential_1/dense_3/kernelsequential_1/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *+
f&R$
"__inference_signature_wrapper_3313
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0sequential_1/conv2d_4/kernel/Read/ReadVariableOp.sequential_1/conv2d_4/bias/Read/ReadVariableOp0sequential_1/conv2d_5/kernel/Read/ReadVariableOp.sequential_1/conv2d_5/bias/Read/ReadVariableOp/sequential_1/dense_2/kernel/Read/ReadVariableOp-sequential_1/dense_2/bias/Read/ReadVariableOp/sequential_1/dense_3/kernel/Read/ReadVariableOp-sequential_1/dense_3/bias/Read/ReadVariableOp(training_2/Adam/iter/Read/ReadVariableOp*training_2/Adam/beta_1/Read/ReadVariableOp*training_2/Adam/beta_2/Read/ReadVariableOp)training_2/Adam/decay/Read/ReadVariableOp1training_2/Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpBtraining_2/Adam/sequential_1/conv2d_4/kernel/m/Read/ReadVariableOp@training_2/Adam/sequential_1/conv2d_4/bias/m/Read/ReadVariableOpBtraining_2/Adam/sequential_1/conv2d_5/kernel/m/Read/ReadVariableOp@training_2/Adam/sequential_1/conv2d_5/bias/m/Read/ReadVariableOpAtraining_2/Adam/sequential_1/dense_2/kernel/m/Read/ReadVariableOp?training_2/Adam/sequential_1/dense_2/bias/m/Read/ReadVariableOpAtraining_2/Adam/sequential_1/dense_3/kernel/m/Read/ReadVariableOp?training_2/Adam/sequential_1/dense_3/bias/m/Read/ReadVariableOpBtraining_2/Adam/sequential_1/conv2d_4/kernel/v/Read/ReadVariableOp@training_2/Adam/sequential_1/conv2d_4/bias/v/Read/ReadVariableOpBtraining_2/Adam/sequential_1/conv2d_5/kernel/v/Read/ReadVariableOp@training_2/Adam/sequential_1/conv2d_5/bias/v/Read/ReadVariableOpAtraining_2/Adam/sequential_1/dense_2/kernel/v/Read/ReadVariableOp?training_2/Adam/sequential_1/dense_2/bias/v/Read/ReadVariableOpAtraining_2/Adam/sequential_1/dense_3/kernel/v/Read/ReadVariableOp?training_2/Adam/sequential_1/dense_3/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *&
f!R
__inference__traced_save_3752

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesequential_1/conv2d_4/kernelsequential_1/conv2d_4/biassequential_1/conv2d_5/kernelsequential_1/conv2d_5/biassequential_1/dense_2/kernelsequential_1/dense_2/biassequential_1/dense_3/kernelsequential_1/dense_3/biastraining_2/Adam/itertraining_2/Adam/beta_1training_2/Adam/beta_2training_2/Adam/decaytraining_2/Adam/learning_ratetotal_1count_1.training_2/Adam/sequential_1/conv2d_4/kernel/m,training_2/Adam/sequential_1/conv2d_4/bias/m.training_2/Adam/sequential_1/conv2d_5/kernel/m,training_2/Adam/sequential_1/conv2d_5/bias/m-training_2/Adam/sequential_1/dense_2/kernel/m+training_2/Adam/sequential_1/dense_2/bias/m-training_2/Adam/sequential_1/dense_3/kernel/m+training_2/Adam/sequential_1/dense_3/bias/m.training_2/Adam/sequential_1/conv2d_4/kernel/v,training_2/Adam/sequential_1/conv2d_4/bias/v.training_2/Adam/sequential_1/conv2d_5/kernel/v,training_2/Adam/sequential_1/conv2d_5/bias/v-training_2/Adam/sequential_1/dense_2/kernel/v+training_2/Adam/sequential_1/dense_2/bias/v-training_2/Adam/sequential_1/dense_3/kernel/v+training_2/Adam/sequential_1/dense_3/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *)
f$R"
 __inference__traced_restore_3855È¹
2
Ý
F__inference_sequential_1_layer_call_and_return_conditional_losses_3387

inputsU
;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel: H
:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias: U
;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel: @H
:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias:@M
9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel:
ÀG
8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias:	L
9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel:	
F
8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpw
conv2d_4/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_4/CastÄ
conv2d_4/Conv2D/ReadVariableOpReadVariableOp;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOpÊ
conv2d_4/Conv2DConv2Dconv2d_4/Cast:y:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv2d_4/Conv2D¹
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp¬
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/ReluÇ
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÄ
conv2d_5/Conv2D/ReadVariableOpReadVariableOp;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOpÙ
conv2d_5/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_5/Conv2D¹
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp¬
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/ReluÇ
max_pooling2d_3/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
flatten_1/Const 
flatten_1/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_1/Reshapeº
dense_2/MatMul/ReadVariableOpReadVariableOp9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¶
dense_2/BiasAdd/ReadVariableOpReadVariableOp8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¢
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/Relu¹
dense_3/MatMul/ReadVariableOpReadVariableOp9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/MatMulµ
dense_3/BiasAdd/ReadVariableOpReadVariableOp8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

IdentityÖ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùN

__inference__traced_save_3752
file_prefix;
7savev2_sequential_1_conv2d_4_kernel_read_readvariableop9
5savev2_sequential_1_conv2d_4_bias_read_readvariableop;
7savev2_sequential_1_conv2d_5_kernel_read_readvariableop9
5savev2_sequential_1_conv2d_5_bias_read_readvariableop:
6savev2_sequential_1_dense_2_kernel_read_readvariableop8
4savev2_sequential_1_dense_2_bias_read_readvariableop:
6savev2_sequential_1_dense_3_kernel_read_readvariableop8
4savev2_sequential_1_dense_3_bias_read_readvariableop3
/savev2_training_2_adam_iter_read_readvariableop	5
1savev2_training_2_adam_beta_1_read_readvariableop5
1savev2_training_2_adam_beta_2_read_readvariableop4
0savev2_training_2_adam_decay_read_readvariableop<
8savev2_training_2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopM
Isavev2_training_2_adam_sequential_1_conv2d_4_kernel_m_read_readvariableopK
Gsavev2_training_2_adam_sequential_1_conv2d_4_bias_m_read_readvariableopM
Isavev2_training_2_adam_sequential_1_conv2d_5_kernel_m_read_readvariableopK
Gsavev2_training_2_adam_sequential_1_conv2d_5_bias_m_read_readvariableopL
Hsavev2_training_2_adam_sequential_1_dense_2_kernel_m_read_readvariableopJ
Fsavev2_training_2_adam_sequential_1_dense_2_bias_m_read_readvariableopL
Hsavev2_training_2_adam_sequential_1_dense_3_kernel_m_read_readvariableopJ
Fsavev2_training_2_adam_sequential_1_dense_3_bias_m_read_readvariableopM
Isavev2_training_2_adam_sequential_1_conv2d_4_kernel_v_read_readvariableopK
Gsavev2_training_2_adam_sequential_1_conv2d_4_bias_v_read_readvariableopM
Isavev2_training_2_adam_sequential_1_conv2d_5_kernel_v_read_readvariableopK
Gsavev2_training_2_adam_sequential_1_conv2d_5_bias_v_read_readvariableopL
Hsavev2_training_2_adam_sequential_1_dense_2_kernel_v_read_readvariableopJ
Fsavev2_training_2_adam_sequential_1_dense_2_bias_v_read_readvariableopL
Hsavev2_training_2_adam_sequential_1_dense_3_kernel_v_read_readvariableopJ
Fsavev2_training_2_adam_sequential_1_dense_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÚ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ì
valueâBß B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÈ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesø
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_sequential_1_conv2d_4_kernel_read_readvariableop5savev2_sequential_1_conv2d_4_bias_read_readvariableop7savev2_sequential_1_conv2d_5_kernel_read_readvariableop5savev2_sequential_1_conv2d_5_bias_read_readvariableop6savev2_sequential_1_dense_2_kernel_read_readvariableop4savev2_sequential_1_dense_2_bias_read_readvariableop6savev2_sequential_1_dense_3_kernel_read_readvariableop4savev2_sequential_1_dense_3_bias_read_readvariableop/savev2_training_2_adam_iter_read_readvariableop1savev2_training_2_adam_beta_1_read_readvariableop1savev2_training_2_adam_beta_2_read_readvariableop0savev2_training_2_adam_decay_read_readvariableop8savev2_training_2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopIsavev2_training_2_adam_sequential_1_conv2d_4_kernel_m_read_readvariableopGsavev2_training_2_adam_sequential_1_conv2d_4_bias_m_read_readvariableopIsavev2_training_2_adam_sequential_1_conv2d_5_kernel_m_read_readvariableopGsavev2_training_2_adam_sequential_1_conv2d_5_bias_m_read_readvariableopHsavev2_training_2_adam_sequential_1_dense_2_kernel_m_read_readvariableopFsavev2_training_2_adam_sequential_1_dense_2_bias_m_read_readvariableopHsavev2_training_2_adam_sequential_1_dense_3_kernel_m_read_readvariableopFsavev2_training_2_adam_sequential_1_dense_3_bias_m_read_readvariableopIsavev2_training_2_adam_sequential_1_conv2d_4_kernel_v_read_readvariableopGsavev2_training_2_adam_sequential_1_conv2d_4_bias_v_read_readvariableopIsavev2_training_2_adam_sequential_1_conv2d_5_kernel_v_read_readvariableopGsavev2_training_2_adam_sequential_1_conv2d_5_bias_v_read_readvariableopHsavev2_training_2_adam_sequential_1_dense_2_kernel_v_read_readvariableopFsavev2_training_2_adam_sequential_1_dense_2_bias_v_read_readvariableopHsavev2_training_2_adam_sequential_1_dense_3_kernel_v_read_readvariableopFsavev2_training_2_adam_sequential_1_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*£
_input_shapes
: : : : @:@:
À::	
:
: : : : : : : : : : @:@:
À::	
:
: : : @:@:
À::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
À:!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
À:!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
À:!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
: 

_output_shapes
: 
Ó

A__inference_dense_3_layer_call_and_return_conditional_losses_3035

inputsD
1matmul_readvariableop_sequential_1_dense_3_kernel:	
>
0biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¡
MatMul/ReadVariableOpReadVariableOp1matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOp0biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_3595

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¼
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2978

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3579

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
2
Þ
F__inference_sequential_1_layer_call_and_return_conditional_losses_3424
input_1U
;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel: H
:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias: U
;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel: @H
:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias:@M
9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel:
ÀG
8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias:	L
9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel:	
F
8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpx
conv2d_4/CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_4/CastÄ
conv2d_4/Conv2D/ReadVariableOpReadVariableOp;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOpÊ
conv2d_4/Conv2DConv2Dconv2d_4/Cast:y:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv2d_4/Conv2D¹
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp¬
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/ReluÇ
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÄ
conv2d_5/Conv2D/ReadVariableOpReadVariableOp;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOpÙ
conv2d_5/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_5/Conv2D¹
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp¬
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/ReluÇ
max_pooling2d_3/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
flatten_1/Const 
flatten_1/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_1/Reshapeº
dense_2/MatMul/ReadVariableOpReadVariableOp9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¶
dense_2/BiasAdd/ReadVariableOpReadVariableOp8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¢
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/Relu¹
dense_3/MatMul/ReadVariableOpReadVariableOp9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/MatMulµ
dense_3/BiasAdd/ReadVariableOpReadVariableOp8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

IdentityÖ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
©

A__inference_dense_3_layer_call_and_return_conditional_losses_3629

inputsD
1matmul_readvariableop_sequential_1_dense_3_kernel:	
>
0biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¡
MatMul/ReadVariableOpReadVariableOp1matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOp0biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
¡
B__inference_conv2d_5_layer_call_and_return_conditional_losses_2991

inputsL
2conv2d_readvariableop_sequential_1_conv2d_5_kernel: @?
1biasadd_readvariableop_sequential_1_conv2d_5_bias:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp©
Conv2D/ReadVariableOpReadVariableOp2conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOp1biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Á
J
.__inference_max_pooling2d_3_layer_call_fn_3589

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29992
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
µ
¡
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2970

inputsL
2conv2d_readvariableop_sequential_1_conv2d_4_kernel: ?
1biasadd_readvariableop_sequential_1_conv2d_4_bias: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp©
Conv2D/ReadVariableOpReadVariableOp2conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOp1biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
J
.__inference_max_pooling2d_3_layer_call_fn_3584

inputs
identityï
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29332
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3574

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°%
«
F__inference_sequential_1_layer_call_and_return_conditional_losses_3194

inputs?
%conv2d_4_sequential_1_conv2d_4_kernel: 1
#conv2d_4_sequential_1_conv2d_4_bias: ?
%conv2d_5_sequential_1_conv2d_5_kernel: @1
#conv2d_5_sequential_1_conv2d_5_bias:@7
#dense_2_sequential_1_dense_2_kernel:
À0
!dense_2_sequential_1_dense_2_bias:	6
#dense_3_sequential_1_dense_3_kernel:	
/
!dense_3_sequential_1_dense_3_bias:

identity¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallw
conv2d_4/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_4/CastÔ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4/Cast:y:0%conv2d_4_sequential_1_conv2d_4_kernel#conv2d_4_sequential_1_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29702"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29782!
max_pooling2d_2/PartitionedCallë
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0%conv2d_5_sequential_1_conv2d_5_kernel#conv2d_5_sequential_1_conv2d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29912"
 conv2d_5/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29992!
max_pooling2d_3/PartitionedCallý
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_30072
flatten_1/PartitionedCall×
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0#dense_2_sequential_1_dense_2_kernel!dense_2_sequential_1_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30202!
dense_2/StatefulPartitionedCallÜ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0#dense_3_sequential_1_dense_3_kernel!dense_3_sequential_1_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_30352!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

IdentityØ
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©

A__inference_dense_2_layer_call_and_return_conditional_losses_3611

inputsE
1matmul_readvariableop_sequential_1_dense_2_kernel:
À?
0biasadd_readvariableop_sequential_1_dense_2_bias:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢
MatMul/ReadVariableOpReadVariableOp1matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOp0biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

Ü
+__inference_sequential_1_layer_call_fn_3500

inputs6
sequential_1_conv2d_4_kernel: (
sequential_1_conv2d_4_bias: 6
sequential_1_conv2d_5_kernel: @(
sequential_1_conv2d_5_bias:@/
sequential_1_dense_2_kernel:
À(
sequential_1_dense_2_bias:	.
sequential_1_dense_3_kernel:	
'
sequential_1_dense_3_bias:

identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_conv2d_4_kernelsequential_1_conv2d_4_biassequential_1_conv2d_5_kernelsequential_1_conv2d_5_biassequential_1_dense_2_kernelsequential_1_dense_2_biassequential_1_dense_3_kernelsequential_1_dense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_31942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2906

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
J
.__inference_max_pooling2d_2_layer_call_fn_3546

inputs
identityï
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29062
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó

A__inference_dense_2_layer_call_and_return_conditional_losses_3020

inputsE
1matmul_readvariableop_sequential_1_dense_2_kernel:
À?
0biasadd_readvariableop_sequential_1_dense_2_bias:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢
MatMul/ReadVariableOpReadVariableOp1matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOp0biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3541

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¼
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2999

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
§
D
(__inference_flatten_1_layer_call_fn_3600

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_30072
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3536

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

º
&__inference_dense_2_layer_call_fn_3618

inputs/
sequential_1_dense_2_kernel:
À(
sequential_1_dense_2_bias:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_dense_2_kernelsequential_1_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30202
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
½
Â
'__inference_conv2d_5_layer_call_fn_3569

inputs6
sequential_1_conv2d_5_kernel: @(
sequential_1_conv2d_5_bias:@
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_conv2d_5_kernelsequential_1_conv2d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

Ü
+__inference_sequential_1_layer_call_fn_3487

inputs6
sequential_1_conv2d_4_kernel: (
sequential_1_conv2d_4_bias: 6
sequential_1_conv2d_5_kernel: @(
sequential_1_conv2d_5_bias:@/
sequential_1_dense_2_kernel:
À(
sequential_1_dense_2_bias:	.
sequential_1_dense_3_kernel:	
'
sequential_1_dense_3_bias:

identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_conv2d_4_kernelsequential_1_conv2d_4_biassequential_1_conv2d_5_kernelsequential_1_conv2d_5_biassequential_1_dense_2_kernelsequential_1_dense_2_biassequential_1_dense_3_kernelsequential_1_dense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_30402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
2
Þ
F__inference_sequential_1_layer_call_and_return_conditional_losses_3461
input_1U
;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel: H
:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias: U
;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel: @H
:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias:@M
9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel:
ÀG
8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias:	L
9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel:	
F
8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpx
conv2d_4/CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_4/CastÄ
conv2d_4/Conv2D/ReadVariableOpReadVariableOp;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOpÊ
conv2d_4/Conv2DConv2Dconv2d_4/Cast:y:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv2d_4/Conv2D¹
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp¬
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/ReluÇ
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÄ
conv2d_5/Conv2D/ReadVariableOpReadVariableOp;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOpÙ
conv2d_5/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_5/Conv2D¹
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp¬
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/ReluÇ
max_pooling2d_3/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
flatten_1/Const 
flatten_1/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_1/Reshapeº
dense_2/MatMul/ReadVariableOpReadVariableOp9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¶
dense_2/BiasAdd/ReadVariableOpReadVariableOp8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¢
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/Relu¹
dense_3/MatMul/ReadVariableOpReadVariableOp9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/MatMulµ
dense_3/BiasAdd/ReadVariableOpReadVariableOp8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

IdentityÖ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
½
Â
'__inference_conv2d_4_layer_call_fn_3531

inputs6
sequential_1_conv2d_4_kernel: (
sequential_1_conv2d_4_bias: 
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_conv2d_4_kernelsequential_1_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¡
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3524

inputsL
2conv2d_readvariableop_sequential_1_conv2d_4_kernel: ?
1biasadd_readvariableop_sequential_1_conv2d_4_bias: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp©
Conv2D/ReadVariableOpReadVariableOp2conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOp1biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2933

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ý
+__inference_sequential_1_layer_call_fn_3474
input_16
sequential_1_conv2d_4_kernel: (
sequential_1_conv2d_4_bias: 6
sequential_1_conv2d_5_kernel: @(
sequential_1_conv2d_5_bias:@/
sequential_1_dense_2_kernel:
À(
sequential_1_dense_2_bias:	.
sequential_1_dense_3_kernel:	
'
sequential_1_dense_3_bias:

identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_1_conv2d_4_kernelsequential_1_conv2d_4_biassequential_1_conv2d_5_kernelsequential_1_conv2d_5_biassequential_1_dense_2_kernelsequential_1_dense_2_biassequential_1_dense_3_kernelsequential_1_dense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_30402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
°%
«
F__inference_sequential_1_layer_call_and_return_conditional_losses_3040

inputs?
%conv2d_4_sequential_1_conv2d_4_kernel: 1
#conv2d_4_sequential_1_conv2d_4_bias: ?
%conv2d_5_sequential_1_conv2d_5_kernel: @1
#conv2d_5_sequential_1_conv2d_5_bias:@7
#dense_2_sequential_1_dense_2_kernel:
À0
!dense_2_sequential_1_dense_2_bias:	6
#dense_3_sequential_1_dense_3_kernel:	
/
!dense_3_sequential_1_dense_3_bias:

identity¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallw
conv2d_4/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_4/CastÔ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4/Cast:y:0%conv2d_4_sequential_1_conv2d_4_kernel#conv2d_4_sequential_1_conv2d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29702"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29782!
max_pooling2d_2/PartitionedCallë
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0%conv2d_5_sequential_1_conv2d_5_kernel#conv2d_5_sequential_1_conv2d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29912"
 conv2d_5/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29992!
max_pooling2d_3/PartitionedCallý
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_30072
flatten_1/PartitionedCall×
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0#dense_2_sequential_1_dense_2_kernel!dense_2_sequential_1_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30202!
dense_2/StatefulPartitionedCallÜ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0#dense_3_sequential_1_dense_3_kernel!dense_3_sequential_1_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_30352!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

IdentityØ
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
Ô
"__inference_signature_wrapper_3313
input_16
sequential_1_conv2d_4_kernel: (
sequential_1_conv2d_4_bias: 6
sequential_1_conv2d_5_kernel: @(
sequential_1_conv2d_5_bias:@/
sequential_1_dense_2_kernel:
À(
sequential_1_dense_2_bias:	.
sequential_1_dense_3_kernel:	
'
sequential_1_dense_3_bias:

identity¢StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_1_conv2d_4_kernelsequential_1_conv2d_4_biassequential_1_conv2d_5_kernelsequential_1_conv2d_5_biassequential_1_dense_2_kernelsequential_1_dense_2_biassequential_1_dense_3_kernelsequential_1_dense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *(
f#R!
__inference__wrapped_model_28972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
à
¡
 __inference__traced_restore_3855
file_prefixG
-assignvariableop_sequential_1_conv2d_4_kernel: ;
-assignvariableop_1_sequential_1_conv2d_4_bias: I
/assignvariableop_2_sequential_1_conv2d_5_kernel: @;
-assignvariableop_3_sequential_1_conv2d_5_bias:@B
.assignvariableop_4_sequential_1_dense_2_kernel:
À;
,assignvariableop_5_sequential_1_dense_2_bias:	A
.assignvariableop_6_sequential_1_dense_3_kernel:	
:
,assignvariableop_7_sequential_1_dense_3_bias:
1
'assignvariableop_8_training_2_adam_iter:	 3
)assignvariableop_9_training_2_adam_beta_1: 4
*assignvariableop_10_training_2_adam_beta_2: 3
)assignvariableop_11_training_2_adam_decay: ;
1assignvariableop_12_training_2_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: \
Bassignvariableop_15_training_2_adam_sequential_1_conv2d_4_kernel_m: N
@assignvariableop_16_training_2_adam_sequential_1_conv2d_4_bias_m: \
Bassignvariableop_17_training_2_adam_sequential_1_conv2d_5_kernel_m: @N
@assignvariableop_18_training_2_adam_sequential_1_conv2d_5_bias_m:@U
Aassignvariableop_19_training_2_adam_sequential_1_dense_2_kernel_m:
ÀN
?assignvariableop_20_training_2_adam_sequential_1_dense_2_bias_m:	T
Aassignvariableop_21_training_2_adam_sequential_1_dense_3_kernel_m:	
M
?assignvariableop_22_training_2_adam_sequential_1_dense_3_bias_m:
\
Bassignvariableop_23_training_2_adam_sequential_1_conv2d_4_kernel_v: N
@assignvariableop_24_training_2_adam_sequential_1_conv2d_4_bias_v: \
Bassignvariableop_25_training_2_adam_sequential_1_conv2d_5_kernel_v: @N
@assignvariableop_26_training_2_adam_sequential_1_conv2d_5_bias_v:@U
Aassignvariableop_27_training_2_adam_sequential_1_dense_2_kernel_v:
ÀN
?assignvariableop_28_training_2_adam_sequential_1_dense_2_bias_v:	T
Aassignvariableop_29_training_2_adam_sequential_1_dense_3_kernel_v:	
M
?assignvariableop_30_training_2_adam_sequential_1_dense_3_bias_v:

identity_32¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9à
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ì
valueâBß B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÎ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¬
AssignVariableOpAssignVariableOp-assignvariableop_sequential_1_conv2d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1²
AssignVariableOp_1AssignVariableOp-assignvariableop_1_sequential_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2´
AssignVariableOp_2AssignVariableOp/assignvariableop_2_sequential_1_conv2d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3²
AssignVariableOp_3AssignVariableOp-assignvariableop_3_sequential_1_conv2d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4³
AssignVariableOp_4AssignVariableOp.assignvariableop_4_sequential_1_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5±
AssignVariableOp_5AssignVariableOp,assignvariableop_5_sequential_1_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6³
AssignVariableOp_6AssignVariableOp.assignvariableop_6_sequential_1_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7±
AssignVariableOp_7AssignVariableOp,assignvariableop_7_sequential_1_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8¬
AssignVariableOp_8AssignVariableOp'assignvariableop_8_training_2_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9®
AssignVariableOp_9AssignVariableOp)assignvariableop_9_training_2_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10²
AssignVariableOp_10AssignVariableOp*assignvariableop_10_training_2_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11±
AssignVariableOp_11AssignVariableOp)assignvariableop_11_training_2_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¹
AssignVariableOp_12AssignVariableOp1assignvariableop_12_training_2_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ê
AssignVariableOp_15AssignVariableOpBassignvariableop_15_training_2_adam_sequential_1_conv2d_4_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16È
AssignVariableOp_16AssignVariableOp@assignvariableop_16_training_2_adam_sequential_1_conv2d_4_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ê
AssignVariableOp_17AssignVariableOpBassignvariableop_17_training_2_adam_sequential_1_conv2d_5_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18È
AssignVariableOp_18AssignVariableOp@assignvariableop_18_training_2_adam_sequential_1_conv2d_5_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19É
AssignVariableOp_19AssignVariableOpAassignvariableop_19_training_2_adam_sequential_1_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ç
AssignVariableOp_20AssignVariableOp?assignvariableop_20_training_2_adam_sequential_1_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21É
AssignVariableOp_21AssignVariableOpAassignvariableop_21_training_2_adam_sequential_1_dense_3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ç
AssignVariableOp_22AssignVariableOp?assignvariableop_22_training_2_adam_sequential_1_dense_3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ê
AssignVariableOp_23AssignVariableOpBassignvariableop_23_training_2_adam_sequential_1_conv2d_4_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24È
AssignVariableOp_24AssignVariableOp@assignvariableop_24_training_2_adam_sequential_1_conv2d_4_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ê
AssignVariableOp_25AssignVariableOpBassignvariableop_25_training_2_adam_sequential_1_conv2d_5_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_training_2_adam_sequential_1_conv2d_5_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27É
AssignVariableOp_27AssignVariableOpAassignvariableop_27_training_2_adam_sequential_1_dense_2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ç
AssignVariableOp_28AssignVariableOp?assignvariableop_28_training_2_adam_sequential_1_dense_2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29É
AssignVariableOp_29AssignVariableOpAassignvariableop_29_training_2_adam_sequential_1_dense_3_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ç
AssignVariableOp_30AssignVariableOp?assignvariableop_30_training_2_adam_sequential_1_dense_3_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_309
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31f
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_32ð
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
«>
	
__inference__wrapped_model_2897
input_1b
Hsequential_1_conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel: U
Gsequential_1_conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias: b
Hsequential_1_conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel: @U
Gsequential_1_conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias:@Z
Fsequential_1_dense_2_matmul_readvariableop_sequential_1_dense_2_kernel:
ÀT
Esequential_1_dense_2_biasadd_readvariableop_sequential_1_dense_2_bias:	Y
Fsequential_1_dense_3_matmul_readvariableop_sequential_1_dense_3_kernel:	
S
Esequential_1_dense_3_biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢,sequential_1/conv2d_4/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_4/Conv2D/ReadVariableOp¢,sequential_1/conv2d_5/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_5/Conv2D/ReadVariableOp¢+sequential_1/dense_2/BiasAdd/ReadVariableOp¢*sequential_1/dense_2/MatMul/ReadVariableOp¢+sequential_1/dense_3/BiasAdd/ReadVariableOp¢*sequential_1/dense_3/MatMul/ReadVariableOp
sequential_1/conv2d_4/CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/conv2d_4/Castë
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOpHsequential_1_conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_4/Conv2D/ReadVariableOpþ
sequential_1/conv2d_4/Conv2DConv2Dsequential_1/conv2d_4/Cast:y:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
sequential_1/conv2d_4/Conv2Dà
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpà
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_1/conv2d_4/BiasAdd¢
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_1/conv2d_4/Reluî
$sequential_1/max_pooling2d_2/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_2/MaxPoolë
+sequential_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOpHsequential_1_conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02-
+sequential_1/conv2d_5/Conv2D/ReadVariableOp
sequential_1/conv2d_5/Conv2DConv2D-sequential_1/max_pooling2d_2/MaxPool:output:03sequential_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
sequential_1/conv2d_5/Conv2Dà
,sequential_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_5/BiasAdd/ReadVariableOpà
sequential_1/conv2d_5/BiasAddBiasAdd%sequential_1/conv2d_5/Conv2D:output:04sequential_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/conv2d_5/BiasAdd¢
sequential_1/conv2d_5/ReluRelu&sequential_1/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/conv2d_5/Reluî
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_5/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_3/MaxPool
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
sequential_1/flatten_1/ConstÔ
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling2d_3/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2 
sequential_1/flatten_1/Reshapeá
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOpFsequential_1_dense_2_matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02,
*sequential_1/dense_2/MatMul/ReadVariableOpÔ
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense_2/MatMulÝ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpEsequential_1_dense_2_biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOpÖ
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense_2/BiasAdd
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense_2/Reluà
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOpFsequential_1_dense_3_matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02,
*sequential_1/dense_3/MatMul/ReadVariableOpÓ
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_1/dense_3/MatMulÜ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpEsequential_1_dense_3_biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOpÕ
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_1/dense_3/BiasAdd 
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_1/dense_3/Softmax
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity¾
NoOpNoOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp-^sequential_1/conv2d_5/BiasAdd/ReadVariableOp,^sequential_1/conv2d_5/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2\
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp,sequential_1/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_4/Conv2D/ReadVariableOp+sequential_1/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_5/BiasAdd/ReadVariableOp,sequential_1/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_5/Conv2D/ReadVariableOp+sequential_1/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
2
Ý
F__inference_sequential_1_layer_call_and_return_conditional_losses_3350

inputsU
;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel: H
:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias: U
;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel: @H
:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias:@M
9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel:
ÀG
8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias:	L
9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel:	
F
8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias:

identity¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpw
conv2d_4/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_4/CastÄ
conv2d_4/Conv2D/ReadVariableOpReadVariableOp;conv2d_4_conv2d_readvariableop_sequential_1_conv2d_4_kernel*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOpÊ
conv2d_4/Conv2DConv2Dconv2d_4/Cast:y:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv2d_4/Conv2D¹
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:conv2d_4_biasadd_readvariableop_sequential_1_conv2d_4_bias*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp¬
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv2d_4/ReluÇ
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÄ
conv2d_5/Conv2D/ReadVariableOpReadVariableOp;conv2d_5_conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOpÙ
conv2d_5/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_5/Conv2D¹
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:conv2d_5_biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp¬
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_5/ReluÇ
max_pooling2d_3/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
flatten_1/Const 
flatten_1/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_1/Reshapeº
dense_2/MatMul/ReadVariableOpReadVariableOp9dense_2_matmul_readvariableop_sequential_1_dense_2_kernel* 
_output_shapes
:
À*
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¶
dense_2/BiasAdd/ReadVariableOpReadVariableOp8dense_2_biasadd_readvariableop_sequential_1_dense_2_bias*
_output_shapes	
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¢
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/Relu¹
dense_3/MatMul/ReadVariableOpReadVariableOp9dense_3_matmul_readvariableop_sequential_1_dense_3_kernel*
_output_shapes
:	
*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/MatMulµ
dense_3/BiasAdd/ReadVariableOpReadVariableOp8dense_3_biasadd_readvariableop_sequential_1_dense_3_bias*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

IdentityÖ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
J
.__inference_max_pooling2d_2_layer_call_fn_3551

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29782
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
å
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_3007

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¡
B__inference_conv2d_5_layer_call_and_return_conditional_losses_3562

inputsL
2conv2d_readvariableop_sequential_1_conv2d_5_kernel: @?
1biasadd_readvariableop_sequential_1_conv2d_5_bias:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp©
Conv2D/ReadVariableOpReadVariableOp2conv2d_readvariableop_sequential_1_conv2d_5_kernel*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOp1biasadd_readvariableop_sequential_1_conv2d_5_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

Ý
+__inference_sequential_1_layer_call_fn_3513
input_16
sequential_1_conv2d_4_kernel: (
sequential_1_conv2d_4_bias: 6
sequential_1_conv2d_5_kernel: @(
sequential_1_conv2d_5_bias:@/
sequential_1_dense_2_kernel:
À(
sequential_1_dense_2_bias:	.
sequential_1_dense_3_kernel:	
'
sequential_1_dense_3_bias:

identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_1_conv2d_4_kernelsequential_1_conv2d_4_biassequential_1_conv2d_5_kernelsequential_1_conv2d_5_biassequential_1_dense_2_kernelsequential_1_dense_2_biassequential_1_dense_3_kernelsequential_1_dense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_31942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

¸
&__inference_dense_3_layer_call_fn_3636

inputs.
sequential_1_dense_3_kernel:	
'
sequential_1_dense_3_bias:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_dense_3_kernelsequential_1_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_30352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
C
input_18
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:
©
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	optimizer
	regularization_losses

	variables
trainable_variables
	keras_api

signatures
*u&call_and_return_all_conditional_losses
v__call__
w_default_save_signature"
_tf_keras_sequential
»

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*x&call_and_return_all_conditional_losses
y__call__"
_tf_keras_layer
¥
regularization_losses
	variables
trainable_variables
	keras_api
*z&call_and_return_all_conditional_losses
{__call__"
_tf_keras_layer
»

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*|&call_and_return_all_conditional_losses
}__call__"
_tf_keras_layer
¥
regularization_losses
	variables
 trainable_variables
!	keras_api
*~&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
§
"regularization_losses
#	variables
$trainable_variables
%	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

&kernel
'bias
(regularization_losses
)	variables
*trainable_variables
+	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

,kernel
-bias
.regularization_losses
/	variables
0trainable_variables
1	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
ã
2iter

3beta_1

4beta_2
	5decay
6learning_ratememfmgmh&mi'mj,mk-mlvmvnvovp&vq'vr,vs-vt"
	optimizer
 "
trackable_list_wrapper
X
0
1
2
3
&4
'5
,6
-7"
trackable_list_wrapper
X
0
1
2
3
&4
'5
,6
-7"
trackable_list_wrapper
Ê
7layer_metrics

8layers
	regularization_losses
9non_trainable_variables
:metrics
;layer_regularization_losses

	variables
trainable_variables
v__call__
w_default_save_signature
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
6:4 2sequential_1/conv2d_4/kernel
(:& 2sequential_1/conv2d_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
<layer_metrics

=layers
regularization_losses
>non_trainable_variables
?metrics
@layer_regularization_losses
	variables
trainable_variables
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Alayer_metrics

Blayers
regularization_losses
Cnon_trainable_variables
Dmetrics
Elayer_regularization_losses
	variables
trainable_variables
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
6:4 @2sequential_1/conv2d_5/kernel
(:&@2sequential_1/conv2d_5/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
Flayer_metrics

Glayers
regularization_losses
Hnon_trainable_variables
Imetrics
Jlayer_regularization_losses
	variables
trainable_variables
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Klayer_metrics

Llayers
regularization_losses
Mnon_trainable_variables
Nmetrics
Olayer_regularization_losses
	variables
 trainable_variables
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Player_metrics

Qlayers
"regularization_losses
Rnon_trainable_variables
Smetrics
Tlayer_regularization_losses
#	variables
$trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
/:-
À2sequential_1/dense_2/kernel
(:&2sequential_1/dense_2/bias
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
°
Ulayer_metrics

Vlayers
(regularization_losses
Wnon_trainable_variables
Xmetrics
Ylayer_regularization_losses
)	variables
*trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.:,	
2sequential_1/dense_3/kernel
':%
2sequential_1/dense_3/bias
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
°
Zlayer_metrics

[layers
.regularization_losses
\non_trainable_variables
]metrics
^layer_regularization_losses
/	variables
0trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2training_2/Adam/iter
 : (2training_2/Adam/beta_1
 : (2training_2/Adam/beta_2
: (2training_2/Adam/decay
':% (2training_2/Adam/learning_rate
 "
trackable_dict_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
^
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api"
_tf_keras_metric
:  (2total_1
:  (2count_1
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
F:D 2.training_2/Adam/sequential_1/conv2d_4/kernel/m
8:6 2,training_2/Adam/sequential_1/conv2d_4/bias/m
F:D @2.training_2/Adam/sequential_1/conv2d_5/kernel/m
8:6@2,training_2/Adam/sequential_1/conv2d_5/bias/m
?:=
À2-training_2/Adam/sequential_1/dense_2/kernel/m
8:62+training_2/Adam/sequential_1/dense_2/bias/m
>:<	
2-training_2/Adam/sequential_1/dense_3/kernel/m
7:5
2+training_2/Adam/sequential_1/dense_3/bias/m
F:D 2.training_2/Adam/sequential_1/conv2d_4/kernel/v
8:6 2,training_2/Adam/sequential_1/conv2d_4/bias/v
F:D @2.training_2/Adam/sequential_1/conv2d_5/kernel/v
8:6@2,training_2/Adam/sequential_1/conv2d_5/bias/v
?:=
À2-training_2/Adam/sequential_1/dense_2/kernel/v
8:62+training_2/Adam/sequential_1/dense_2/bias/v
>:<	
2-training_2/Adam/sequential_1/dense_3/kernel/v
7:5
2+training_2/Adam/sequential_1/dense_3/bias/v
æ2ã
F__inference_sequential_1_layer_call_and_return_conditional_losses_3350
F__inference_sequential_1_layer_call_and_return_conditional_losses_3387
F__inference_sequential_1_layer_call_and_return_conditional_losses_3424
F__inference_sequential_1_layer_call_and_return_conditional_losses_3461À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ú2÷
+__inference_sequential_1_layer_call_fn_3474
+__inference_sequential_1_layer_call_fn_3487
+__inference_sequential_1_layer_call_fn_3500
+__inference_sequential_1_layer_call_fn_3513À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÊBÇ
__inference__wrapped_model_2897input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3524¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_conv2d_4_layer_call_fn_3531¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¾2»
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3536
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3541¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
.__inference_max_pooling2d_2_layer_call_fn_3546
.__inference_max_pooling2d_2_layer_call_fn_3551¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_conv2d_5_layer_call_and_return_conditional_losses_3562¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_conv2d_5_layer_call_fn_3569¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¾2»
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3574
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3579¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
.__inference_max_pooling2d_3_layer_call_fn_3584
.__inference_max_pooling2d_3_layer_call_fn_3589¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_flatten_1_layer_call_and_return_conditional_losses_3595¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_flatten_1_layer_call_fn_3600¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dense_2_layer_call_and_return_conditional_losses_3611¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_dense_2_layer_call_fn_3618¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dense_3_layer_call_and_return_conditional_losses_3629¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_dense_3_layer_call_fn_3636¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÉBÆ
"__inference_signature_wrapper_3313input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
__inference__wrapped_model_2897y&',-8¢5
.¢+
)&
input_1ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
²
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3524l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 
'__inference_conv2d_4_layer_call_fn_3531_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ ²
B__inference_conv2d_5_layer_call_and_return_conditional_losses_3562l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
'__inference_conv2d_5_layer_call_fn_3569_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ@£
A__inference_dense_2_layer_call_and_return_conditional_losses_3611^&'0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_dense_2_layer_call_fn_3618Q&'0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ¢
A__inference_dense_3_layer_call_and_return_conditional_losses_3629],-0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 z
&__inference_dense_3_layer_call_fn_3636P,-0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
¨
C__inference_flatten_1_layer_call_and_return_conditional_losses_3595a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
(__inference_flatten_1_layer_call_fn_3600T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÀì
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3536R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3541h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 Ä
.__inference_max_pooling2d_2_layer_call_fn_3546R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
.__inference_max_pooling2d_2_layer_call_fn_3551[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ ì
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3574R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3579h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Ä
.__inference_max_pooling2d_3_layer_call_fn_3584R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
.__inference_max_pooling2d_3_layer_call_fn_3589[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@¼
F__inference_sequential_1_layer_call_and_return_conditional_losses_3350r&',-?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¼
F__inference_sequential_1_layer_call_and_return_conditional_losses_3387r&',-?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ½
F__inference_sequential_1_layer_call_and_return_conditional_losses_3424s&',-@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ½
F__inference_sequential_1_layer_call_and_return_conditional_losses_3461s&',-@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
+__inference_sequential_1_layer_call_fn_3474f&',-@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

+__inference_sequential_1_layer_call_fn_3487e&',-?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

+__inference_sequential_1_layer_call_fn_3500e&',-?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

+__inference_sequential_1_layer_call_fn_3513f&',-@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
«
"__inference_signature_wrapper_3313&',-C¢@
¢ 
9ª6
4
input_1)&
input_1ÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
