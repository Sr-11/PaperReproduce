÷
é
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
À
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
;
Elu
features"T
activations"T"
Ttype:
2
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Ã«

Adam/conv2d_transpose_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_7/bias/v

2Adam/conv2d_transpose_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_7/bias/v*
_output_shapes
:*
dtype0
¤
 Adam/conv2d_transpose_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_7/kernel/v

4Adam/conv2d_transpose_7/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_7/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_transpose_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_6/bias/v

2Adam/conv2d_transpose_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_6/bias/v*
_output_shapes
: *
dtype0
¤
 Adam/conv2d_transpose_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_6/kernel/v

4Adam/conv2d_transpose_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_6/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_transpose_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_5/bias/v

2Adam/conv2d_transpose_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_5/bias/v*
_output_shapes
:@*
dtype0
¤
 Adam/conv2d_transpose_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *1
shared_name" Adam/conv2d_transpose_5/kernel/v

4Adam/conv2d_transpose_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_5/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_3/bias/v
x
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes	
: *
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	 *
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	*
dtype0

Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_5/kernel/v

*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_transpose_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_7/bias/m

2Adam/conv2d_transpose_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_7/bias/m*
_output_shapes
:*
dtype0
¤
 Adam/conv2d_transpose_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_7/kernel/m

4Adam/conv2d_transpose_7/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_7/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_transpose_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_6/bias/m

2Adam/conv2d_transpose_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_6/bias/m*
_output_shapes
: *
dtype0
¤
 Adam/conv2d_transpose_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_6/kernel/m

4Adam/conv2d_transpose_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_6/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_transpose_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_5/bias/m

2Adam/conv2d_transpose_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_5/bias/m*
_output_shapes
:@*
dtype0
¤
 Adam/conv2d_transpose_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *1
shared_name" Adam/conv2d_transpose_5/kernel/m

4Adam/conv2d_transpose_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_5/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_3/bias/m
x
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes	
: *
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	 *
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	*
dtype0

Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_5/kernel/m

*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

conv2d_transpose_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_7/bias

+conv2d_transpose_7/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/bias*
_output_shapes
:*
dtype0

conv2d_transpose_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv2d_transpose_7/kernel

-conv2d_transpose_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/kernel*&
_output_shapes
: *
dtype0

conv2d_transpose_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose_6/bias

+conv2d_transpose_6/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/bias*
_output_shapes
: *
dtype0

conv2d_transpose_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv2d_transpose_6/kernel

-conv2d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*&
_output_shapes
: @*
dtype0

conv2d_transpose_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_5/bias

+conv2d_transpose_5/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/bias*
_output_shapes
:@*
dtype0

conv2d_transpose_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ **
shared_nameconv2d_transpose_5/kernel

-conv2d_transpose_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/kernel*&
_output_shapes
:@ *
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
: *
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	 *
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
ói
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*®i
value¤iB¡i Bi
æ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
 trace_1
!trace_2
"trace_3* 
6
#trace_0
$trace_1
%trace_2
&trace_3* 
* 

'layer_with_weights-0
'layer-0
(layer_with_weights-1
(layer-1
)layer-2
*layer_with_weights-2
*layer-3
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
¹
1layer_with_weights-0
1layer-0
2layer-1
3layer_with_weights-1
3layer-2
4layer_with_weights-2
4layer-3
5layer_with_weights-3
5layer-4
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*
Ü
<iter

=beta_1

>beta_2
	?decay
@learning_ratemÛmÜmÝmÞmßmàmámâmãmämåmæmçmèvévêvëvìvívîvïvðvñvòvóvôvõvö*

Aserving_default* 
OI
VARIABLE_VALUEconv2d_5/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_5/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_6/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_6/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_5/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose_5/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_6/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_6/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_7/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_7/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1*

B0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
È
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

kernel
bias
 I_jit_compiled_convolution_op*
È
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

kernel
bias
 P_jit_compiled_convolution_op*

Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
¦
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

kernel
bias*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
6
btrace_0
ctrace_1
dtrace_2
etrace_3* 
6
ftrace_0
gtrace_1
htrace_2
itrace_3* 
¦
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

kernel
bias*

p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
È
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

kernel
bias
 |_jit_compiled_convolution_op*
Ì
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op*
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
	variables
	keras_api

total

count*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

¡trace_0* 

¢trace_0* 
* 

0
1*

0
1*
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

¨trace_0* 

©trace_0* 
* 
* 
* 
* 

ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

¯trace_0* 

°trace_0* 

0
1*

0
1*
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

¶trace_0* 

·trace_0* 
* 
 
'0
(1
)2
*3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

½trace_0* 

¾trace_0* 
* 
* 
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

Ätrace_0* 

Åtrace_0* 

0
1*

0
1*
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

Ëtrace_0* 

Ìtrace_0* 
* 

0
1*

0
1*
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Òtrace_0* 

Ótrace_0* 
* 

0
1*

0
1*
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ùtrace_0* 

Útrace_0* 
* 
* 
'
10
21
32
43
54*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
rl
VARIABLE_VALUEAdam/conv2d_5/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d_5/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_6/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d_6/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/conv2d_transpose_5/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose_5/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_6/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_6/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_7/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_7/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_5/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d_5/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_6/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d_6/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/conv2d_transpose_5/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose_5/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_6/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_6/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_7/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_7/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_1Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
ñ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasconv2d_transpose_5/kernelconv2d_transpose_5/biasconv2d_transpose_6/kernelconv2d_transpose_6/biasconv2d_transpose_7/kernelconv2d_transpose_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_910159
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp-conv2d_transpose_5/kernel/Read/ReadVariableOp+conv2d_transpose_5/bias/Read/ReadVariableOp-conv2d_transpose_6/kernel/Read/ReadVariableOp+conv2d_transpose_6/bias/Read/ReadVariableOp-conv2d_transpose_7/kernel/Read/ReadVariableOp+conv2d_transpose_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_5/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_5/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_6/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_6/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_7/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_7/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_5/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_5/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_6/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_6/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_7/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_7/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_911124
©
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasconv2d_transpose_5/kernelconv2d_transpose_5/biasconv2d_transpose_6/kernelconv2d_transpose_6/biasconv2d_transpose_7/kernelconv2d_transpose_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m Adam/conv2d_transpose_5/kernel/mAdam/conv2d_transpose_5/bias/m Adam/conv2d_transpose_6/kernel/mAdam/conv2d_transpose_6/bias/m Adam/conv2d_transpose_7/kernel/mAdam/conv2d_transpose_7/bias/mAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v Adam/conv2d_transpose_5/kernel/vAdam/conv2d_transpose_5/bias/v Adam/conv2d_transpose_6/kernel/vAdam/conv2d_transpose_6/bias/v Adam/conv2d_transpose_7/kernel/vAdam/conv2d_transpose_7/bias/v*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_911281÷¶
	

-__inference_sequential_4_layer_call_fn_910463

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¤
H__inference_sequential_4_layer_call_and_return_conditional_losses_909323

inputs)
conv2d_5_909276: 
conv2d_5_909278: )
conv2d_6_909293: @
conv2d_6_909295:@!
dense_2_909317:	
dense_2_909319:
identity¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢dense_2/StatefulPartitionedCallû
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_909276conv2d_5_909278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_909275
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_909293conv2d_6_909295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_909292á
flatten_1/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_909304
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_909317dense_2_909319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_909316w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_5_layer_call_and_return_conditional_losses_909275

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
ö	
×
-__inference_sequential_5_layer_call_fn_909694
input_5
unknown:	 
	unknown_0:	 #
	unknown_1:@ 
	unknown_2:@#
	unknown_3: @
	unknown_4: #
	unknown_5: 
	unknown_6:
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909675w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
Ú
í
H__inference_sequential_5_layer_call_and_return_conditional_losses_909823
input_5!
dense_3_909801:	 
dense_3_909803:	 3
conv2d_transpose_5_909807:@ '
conv2d_transpose_5_909809:@3
conv2d_transpose_6_909812: @'
conv2d_transpose_6_909814: 3
conv2d_transpose_7_909817: '
conv2d_transpose_7_909819:
identity¢*conv2d_transpose_5/StatefulPartitionedCall¢*conv2d_transpose_6/StatefulPartitionedCall¢*conv2d_transpose_7/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallñ
dense_3/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_3_909801dense_3_909803*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_909637ç
reshape_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_909657¿
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_transpose_5_909807conv2d_transpose_5_909809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_909523Ð
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0conv2d_transpose_6_909812conv2d_transpose_6_909814*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_909568Ð
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0conv2d_transpose_7_909817conv2d_transpose_7_909819*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_909612
IdentityIdentity3conv2d_transpose_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
NoOpNoOp+^conv2d_transpose_5/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
Ú
í
H__inference_sequential_5_layer_call_and_return_conditional_losses_909848
input_5!
dense_3_909826:	 
dense_3_909828:	 3
conv2d_transpose_5_909832:@ '
conv2d_transpose_5_909834:@3
conv2d_transpose_6_909837: @'
conv2d_transpose_6_909839: 3
conv2d_transpose_7_909842: '
conv2d_transpose_7_909844:
identity¢*conv2d_transpose_5/StatefulPartitionedCall¢*conv2d_transpose_6/StatefulPartitionedCall¢*conv2d_transpose_7/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallñ
dense_3/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_3_909826dense_3_909828*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_909637ç
reshape_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_909657¿
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_transpose_5_909832conv2d_transpose_5_909834*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_909523Ð
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0conv2d_transpose_6_909837conv2d_transpose_6_909839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_909568Ð
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0conv2d_transpose_7_909842conv2d_transpose_7_909844*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_909612
IdentityIdentity3conv2d_transpose_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
NoOpNoOp+^conv2d_transpose_5/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
×
ì
H__inference_sequential_5_layer_call_and_return_conditional_losses_909675

inputs!
dense_3_909638:	 
dense_3_909640:	 3
conv2d_transpose_5_909659:@ '
conv2d_transpose_5_909661:@3
conv2d_transpose_6_909664: @'
conv2d_transpose_6_909666: 3
conv2d_transpose_7_909669: '
conv2d_transpose_7_909671:
identity¢*conv2d_transpose_5/StatefulPartitionedCall¢*conv2d_transpose_6/StatefulPartitionedCall¢*conv2d_transpose_7/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallð
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_909638dense_3_909640*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_909637ç
reshape_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_909657¿
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_transpose_5_909659conv2d_transpose_5_909661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_909523Ð
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0conv2d_transpose_6_909664conv2d_transpose_6_909666*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_909568Ð
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0conv2d_transpose_7_909669conv2d_transpose_7_909671*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_909612
IdentityIdentity3conv2d_transpose_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
NoOpNoOp+^conv2d_transpose_5/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

$__inference_signature_wrapper_910159
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
	unknown_5:	 
	unknown_6:	 #
	unknown_7:@ 
	unknown_8:@#
	unknown_9: @

unknown_10: $

unknown_11: 

unknown_12:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_909257w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

ý
D__inference_conv2d_6_layer_call_and_return_conditional_losses_909292

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
Ö 

N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_910954

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿy
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
´
F
*__inference_reshape_1_layer_call_fn_910812

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_909657h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ý
 
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910429
xN
4sequential_4_conv2d_5_conv2d_readvariableop_resource: C
5sequential_4_conv2d_5_biasadd_readvariableop_resource: N
4sequential_4_conv2d_6_conv2d_readvariableop_resource: @C
5sequential_4_conv2d_6_biasadd_readvariableop_resource:@F
3sequential_4_dense_2_matmul_readvariableop_resource:	B
4sequential_4_dense_2_biasadd_readvariableop_resource:F
3sequential_5_dense_3_matmul_readvariableop_resource:	 C
4sequential_5_dense_3_biasadd_readvariableop_resource:	 b
Hsequential_5_conv2d_transpose_5_conv2d_transpose_readvariableop_resource:@ M
?sequential_5_conv2d_transpose_5_biasadd_readvariableop_resource:@b
Hsequential_5_conv2d_transpose_6_conv2d_transpose_readvariableop_resource: @M
?sequential_5_conv2d_transpose_6_biasadd_readvariableop_resource: b
Hsequential_5_conv2d_transpose_7_conv2d_transpose_readvariableop_resource: M
?sequential_5_conv2d_transpose_7_biasadd_readvariableop_resource:
identity¢,sequential_4/conv2d_5/BiasAdd/ReadVariableOp¢+sequential_4/conv2d_5/Conv2D/ReadVariableOp¢,sequential_4/conv2d_6/BiasAdd/ReadVariableOp¢+sequential_4/conv2d_6/Conv2D/ReadVariableOp¢+sequential_4/dense_2/BiasAdd/ReadVariableOp¢*sequential_4/dense_2/MatMul/ReadVariableOp¢6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp¢?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp¢6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp¢?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp¢6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp¢?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp¢+sequential_5/dense_3/BiasAdd/ReadVariableOp¢*sequential_5/dense_3/MatMul/ReadVariableOp¨
+sequential_4/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Á
sequential_4/conv2d_5/Conv2DConv2Dx3sequential_4/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

,sequential_4/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¿
sequential_4/conv2d_5/BiasAddBiasAdd%sequential_4/conv2d_5/Conv2D:output:04sequential_4/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_4/conv2d_5/EluElu&sequential_4/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
+sequential_4/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ç
sequential_4/conv2d_6/Conv2DConv2D'sequential_4/conv2d_5/Elu:activations:03sequential_4/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

,sequential_4/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
sequential_4/conv2d_6/BiasAddBiasAdd%sequential_4/conv2d_6/Conv2D:output:04sequential_4/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_4/conv2d_6/EluElu&sequential_4/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
sequential_4/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  ¬
sequential_4/flatten_1/ReshapeReshape'sequential_4/conv2d_6/Elu:activations:0%sequential_4/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_4/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0´
sequential_4/dense_2/MatMulMatMul'sequential_4/flatten_1/Reshape:output:02sequential_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_4/dense_2/BiasAddBiasAdd%sequential_4/dense_2/MatMul:product:03sequential_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0³
sequential_5/dense_3/MatMulMatMul%sequential_4/dense_2/BiasAdd:output:02sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0¶
sequential_5/dense_3/BiasAddBiasAdd%sequential_5/dense_3/MatMul:product:03sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
sequential_5/dense_3/ReluRelu%sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
sequential_5/reshape_1/ShapeShape'sequential_5/dense_3/Relu:activations:0*
T0*
_output_shapes
:t
*sequential_5/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_5/reshape_1/strided_sliceStridedSlice%sequential_5/reshape_1/Shape:output:03sequential_5/reshape_1/strided_slice/stack:output:05sequential_5/reshape_1/strided_slice/stack_1:output:05sequential_5/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_5/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_5/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_5/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 
$sequential_5/reshape_1/Reshape/shapePack-sequential_5/reshape_1/strided_slice:output:0/sequential_5/reshape_1/Reshape/shape/1:output:0/sequential_5/reshape_1/Reshape/shape/2:output:0/sequential_5/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:»
sequential_5/reshape_1/ReshapeReshape'sequential_5/dense_3/Relu:activations:0-sequential_5/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
%sequential_5/conv2d_transpose_5/ShapeShape'sequential_5/reshape_1/Reshape:output:0*
T0*
_output_shapes
:}
3sequential_5/conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_5/conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_5/conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_5/conv2d_transpose_5/strided_sliceStridedSlice.sequential_5/conv2d_transpose_5/Shape:output:0<sequential_5/conv2d_transpose_5/strided_slice/stack:output:0>sequential_5/conv2d_transpose_5/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_5/conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@©
%sequential_5/conv2d_transpose_5/stackPack6sequential_5/conv2d_transpose_5/strided_slice:output:00sequential_5/conv2d_transpose_5/stack/1:output:00sequential_5/conv2d_transpose_5/stack/2:output:00sequential_5/conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_5/conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_5/conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_5/conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_5/conv2d_transpose_5/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_5/stack:output:0>sequential_5/conv2d_transpose_5/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_5/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ë
0sequential_5/conv2d_transpose_5/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_5/stack:output:0Gsequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:0'sequential_5/reshape_1/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
²
6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ç
'sequential_5/conv2d_transpose_5/BiasAddBiasAdd9sequential_5/conv2d_transpose_5/conv2d_transpose:output:0>sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#sequential_5/conv2d_transpose_5/EluElu0sequential_5/conv2d_transpose_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%sequential_5/conv2d_transpose_6/ShapeShape1sequential_5/conv2d_transpose_5/Elu:activations:0*
T0*
_output_shapes
:}
3sequential_5/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_5/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_5/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_5/conv2d_transpose_6/strided_sliceStridedSlice.sequential_5/conv2d_transpose_6/Shape:output:0<sequential_5/conv2d_transpose_6/strided_slice/stack:output:0>sequential_5/conv2d_transpose_6/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_5/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ©
%sequential_5/conv2d_transpose_6/stackPack6sequential_5/conv2d_transpose_6/strided_slice:output:00sequential_5/conv2d_transpose_6/stack/1:output:00sequential_5/conv2d_transpose_6/stack/2:output:00sequential_5/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_5/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_5/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_5/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_5/conv2d_transpose_6/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_6/stack:output:0>sequential_5/conv2d_transpose_6/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_6/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Õ
0sequential_5/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_6/stack:output:0Gsequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:01sequential_5/conv2d_transpose_5/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
²
6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ç
'sequential_5/conv2d_transpose_6/BiasAddBiasAdd9sequential_5/conv2d_transpose_6/conv2d_transpose:output:0>sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#sequential_5/conv2d_transpose_6/EluElu0sequential_5/conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%sequential_5/conv2d_transpose_7/ShapeShape1sequential_5/conv2d_transpose_6/Elu:activations:0*
T0*
_output_shapes
:}
3sequential_5/conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_5/conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_5/conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_5/conv2d_transpose_7/strided_sliceStridedSlice.sequential_5/conv2d_transpose_7/Shape:output:0<sequential_5/conv2d_transpose_7/strided_slice/stack:output:0>sequential_5/conv2d_transpose_7/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_5/conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :©
%sequential_5/conv2d_transpose_7/stackPack6sequential_5/conv2d_transpose_7/strided_slice:output:00sequential_5/conv2d_transpose_7/stack/1:output:00sequential_5/conv2d_transpose_7/stack/2:output:00sequential_5/conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_5/conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_5/conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_5/conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_5/conv2d_transpose_7/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_7/stack:output:0>sequential_5/conv2d_transpose_7/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_7/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Õ
0sequential_5/conv2d_transpose_7/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_7/stack:output:0Gsequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:01sequential_5/conv2d_transpose_6/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
²
6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ç
'sequential_5/conv2d_transpose_7/BiasAddBiasAdd9sequential_5/conv2d_transpose_7/conv2d_transpose:output:0>sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity0sequential_5/conv2d_transpose_7/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp-^sequential_4/conv2d_5/BiasAdd/ReadVariableOp,^sequential_4/conv2d_5/Conv2D/ReadVariableOp-^sequential_4/conv2d_6/BiasAdd/ReadVariableOp,^sequential_4/conv2d_6/Conv2D/ReadVariableOp,^sequential_4/dense_2/BiasAdd/ReadVariableOp+^sequential_4/dense_2/MatMul/ReadVariableOp7^sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp7^sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp7^sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp,^sequential_5/dense_3/BiasAdd/ReadVariableOp+^sequential_5/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2\
,sequential_4/conv2d_5/BiasAdd/ReadVariableOp,sequential_4/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_5/Conv2D/ReadVariableOp+sequential_4/conv2d_5/Conv2D/ReadVariableOp2\
,sequential_4/conv2d_6/BiasAdd/ReadVariableOp,sequential_4/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_6/Conv2D/ReadVariableOp+sequential_4/conv2d_6/Conv2D/ReadVariableOp2Z
+sequential_4/dense_2/BiasAdd/ReadVariableOp+sequential_4/dense_2/BiasAdd/ReadVariableOp2X
*sequential_4/dense_2/MatMul/ReadVariableOp*sequential_4/dense_2/MatMul/ReadVariableOp2p
6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp2p
6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2p
6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp2Z
+sequential_5/dense_3/BiasAdd/ReadVariableOp+sequential_5/dense_3/BiasAdd/ReadVariableOp2X
*sequential_5/dense_3/MatMul/ReadVariableOp*sequential_5/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
ó	
Ö
-__inference_sequential_5_layer_call_fn_910557

inputs
unknown:	 
	unknown_0:	 #
	unknown_1:@ 
	unknown_2:@#
	unknown_3: @
	unknown_4: #
	unknown_5: 
	unknown_6:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909758w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_6_layer_call_and_return_conditional_losses_910757

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
Ç

(__inference_dense_3_layer_call_fn_910796

inputs
unknown:	 
	unknown_0:	 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_909637p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

ö
C__inference_dense_3_layer_call_and_return_conditional_losses_910807

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

)__inference_conv2d_5_layer_call_fn_910726

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_909275w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

H__inference_sequential_4_layer_call_and_return_conditional_losses_910489

inputsA
'conv2d_5_conv2d_readvariableop_resource: 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource: @6
(conv2d_6_biasadd_readvariableop_resource:@9
&dense_2_matmul_readvariableop_resource:	5
'dense_2_biasadd_readvariableop_resource:
identity¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¬
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
conv2d_5/EluEluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0À
conv2d_6/Conv2DConv2Dconv2d_5/Elu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
conv2d_6/EluEluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  
flatten_1/ReshapeReshapeconv2d_6/Elu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
ì
H__inference_sequential_5_layer_call_and_return_conditional_losses_909758

inputs!
dense_3_909736:	 
dense_3_909738:	 3
conv2d_transpose_5_909742:@ '
conv2d_transpose_5_909744:@3
conv2d_transpose_6_909747: @'
conv2d_transpose_6_909749: 3
conv2d_transpose_7_909752: '
conv2d_transpose_7_909754:
identity¢*conv2d_transpose_5/StatefulPartitionedCall¢*conv2d_transpose_6/StatefulPartitionedCall¢*conv2d_transpose_7/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallð
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_909736dense_3_909738*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_909637ç
reshape_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_909657¿
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_transpose_5_909742conv2d_transpose_5_909744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_909523Ð
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0conv2d_transpose_6_909747conv2d_transpose_6_909749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_909568Ð
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0conv2d_transpose_7_909752conv2d_transpose_7_909754*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_909612
IdentityIdentity3conv2d_transpose_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
NoOpNoOp+^conv2d_transpose_5/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
¨
3__inference_conv2d_transpose_5_layer_call_fn_910835

inputs!
unknown:@ 
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_909523
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
b
º
__inference__traced_save_911124
file_prefix.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop8
4savev2_conv2d_transpose_5_kernel_read_readvariableop6
2savev2_conv2d_transpose_5_bias_read_readvariableop8
4savev2_conv2d_transpose_6_kernel_read_readvariableop6
2savev2_conv2d_transpose_6_bias_read_readvariableop8
4savev2_conv2d_transpose_7_kernel_read_readvariableop6
2savev2_conv2d_transpose_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_5_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_5_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_6_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_6_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_7_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_5_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_5_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_6_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_6_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_7_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_7_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*°
value¦B£2B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÑ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ë
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop4savev2_conv2d_transpose_5_kernel_read_readvariableop2savev2_conv2d_transpose_5_bias_read_readvariableop4savev2_conv2d_transpose_6_kernel_read_readvariableop2savev2_conv2d_transpose_6_bias_read_readvariableop4savev2_conv2d_transpose_7_kernel_read_readvariableop2savev2_conv2d_transpose_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_5_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_5_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_6_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_6_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_7_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_7_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_5_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_5_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_6_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_6_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_7_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ø
_input_shapesæ
ã: : : : @:@:	::	 : :@ :@: @: : :: : : : : : : : : : @:@:	::	 : :@ :@: @: : :: : : @:@:	::	 : :@ :@: @: : :: 2(
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
:@:%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	 :!

_output_shapes	
: :,	(
&
_output_shapes
:@ : 


_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	 :!

_output_shapes	
: :,(
&
_output_shapes
:@ : 

_output_shapes
:@:, (
&
_output_shapes
: @: !

_output_shapes
: :,"(
&
_output_shapes
: : #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: @: '

_output_shapes
:@:%(!

_output_shapes
:	: )

_output_shapes
::%*!

_output_shapes
:	 :!+

_output_shapes	
: :,,(
&
_output_shapes
:@ : -

_output_shapes
:@:,.(
&
_output_shapes
: @: /

_output_shapes
: :,0(
&
_output_shapes
: : 1

_output_shapes
::2

_output_shapes
: 
Â

H__inference_sequential_4_layer_call_and_return_conditional_losses_910515

inputsA
'conv2d_5_conv2d_readvariableop_resource: 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource: @6
(conv2d_6_biasadd_readvariableop_resource:@9
&dense_2_matmul_readvariableop_resource:	5
'dense_2_biasadd_readvariableop_resource:
identity¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¬
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
conv2d_5/EluEluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0À
conv2d_6/Conv2DConv2Dconv2d_5/Elu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
conv2d_6/EluEluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  
flatten_1/ReshapeReshapeconv2d_6/Elu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

)__inference_conv2d_6_layer_call_fn_910746

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_909292w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ö 

N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_909612

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿy
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Á!

N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_910912

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ç
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_909304

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¥
H__inference_sequential_4_layer_call_and_return_conditional_losses_909465
input_4)
conv2d_5_909448: 
conv2d_5_909450: )
conv2d_6_909453: @
conv2d_6_909455:@!
dense_2_909459:	
dense_2_909461:
identity¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢dense_2/StatefulPartitionedCallü
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_5_909448conv2d_5_909450*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_909275
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_909453conv2d_6_909455*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_909292á
flatten_1/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_909304
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_909459dense_2_909461*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_909316w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
Î
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_910826

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Á!

N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_910869

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ê	
õ
C__inference_dense_2_layer_call_and_return_conditional_losses_910787

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
õ
C__inference_dense_2_layer_call_and_return_conditional_losses_909316

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

ö
C__inference_dense_3_layer_call_and_return_conditional_losses_909637

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü¶

!__inference__wrapped_model_909257
input_1\
Bautoencoder_1_sequential_4_conv2d_5_conv2d_readvariableop_resource: Q
Cautoencoder_1_sequential_4_conv2d_5_biasadd_readvariableop_resource: \
Bautoencoder_1_sequential_4_conv2d_6_conv2d_readvariableop_resource: @Q
Cautoencoder_1_sequential_4_conv2d_6_biasadd_readvariableop_resource:@T
Aautoencoder_1_sequential_4_dense_2_matmul_readvariableop_resource:	P
Bautoencoder_1_sequential_4_dense_2_biasadd_readvariableop_resource:T
Aautoencoder_1_sequential_5_dense_3_matmul_readvariableop_resource:	 Q
Bautoencoder_1_sequential_5_dense_3_biasadd_readvariableop_resource:	 p
Vautoencoder_1_sequential_5_conv2d_transpose_5_conv2d_transpose_readvariableop_resource:@ [
Mautoencoder_1_sequential_5_conv2d_transpose_5_biasadd_readvariableop_resource:@p
Vautoencoder_1_sequential_5_conv2d_transpose_6_conv2d_transpose_readvariableop_resource: @[
Mautoencoder_1_sequential_5_conv2d_transpose_6_biasadd_readvariableop_resource: p
Vautoencoder_1_sequential_5_conv2d_transpose_7_conv2d_transpose_readvariableop_resource: [
Mautoencoder_1_sequential_5_conv2d_transpose_7_biasadd_readvariableop_resource:
identity¢:autoencoder_1/sequential_4/conv2d_5/BiasAdd/ReadVariableOp¢9autoencoder_1/sequential_4/conv2d_5/Conv2D/ReadVariableOp¢:autoencoder_1/sequential_4/conv2d_6/BiasAdd/ReadVariableOp¢9autoencoder_1/sequential_4/conv2d_6/Conv2D/ReadVariableOp¢9autoencoder_1/sequential_4/dense_2/BiasAdd/ReadVariableOp¢8autoencoder_1/sequential_4/dense_2/MatMul/ReadVariableOp¢Dautoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp¢Mautoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp¢Dautoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp¢Mautoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp¢Dautoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp¢Mautoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp¢9autoencoder_1/sequential_5/dense_3/BiasAdd/ReadVariableOp¢8autoencoder_1/sequential_5/dense_3/MatMul/ReadVariableOpÄ
9autoencoder_1/sequential_4/conv2d_5/Conv2D/ReadVariableOpReadVariableOpBautoencoder_1_sequential_4_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ã
*autoencoder_1/sequential_4/conv2d_5/Conv2DConv2Dinput_1Aautoencoder_1/sequential_4/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
º
:autoencoder_1/sequential_4/conv2d_5/BiasAdd/ReadVariableOpReadVariableOpCautoencoder_1_sequential_4_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0é
+autoencoder_1/sequential_4/conv2d_5/BiasAddBiasAdd3autoencoder_1/sequential_4/conv2d_5/Conv2D:output:0Bautoencoder_1/sequential_4/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'autoencoder_1/sequential_4/conv2d_5/EluElu4autoencoder_1/sequential_4/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
9autoencoder_1/sequential_4/conv2d_6/Conv2D/ReadVariableOpReadVariableOpBautoencoder_1_sequential_4_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
*autoencoder_1/sequential_4/conv2d_6/Conv2DConv2D5autoencoder_1/sequential_4/conv2d_5/Elu:activations:0Aautoencoder_1/sequential_4/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
º
:autoencoder_1/sequential_4/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpCautoencoder_1_sequential_4_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0é
+autoencoder_1/sequential_4/conv2d_6/BiasAddBiasAdd3autoencoder_1/sequential_4/conv2d_6/Conv2D:output:0Bautoencoder_1/sequential_4/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'autoencoder_1/sequential_4/conv2d_6/EluElu4autoencoder_1/sequential_4/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*autoencoder_1/sequential_4/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  Ö
,autoencoder_1/sequential_4/flatten_1/ReshapeReshape5autoencoder_1/sequential_4/conv2d_6/Elu:activations:03autoencoder_1/sequential_4/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
8autoencoder_1/sequential_4/dense_2/MatMul/ReadVariableOpReadVariableOpAautoencoder_1_sequential_4_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Þ
)autoencoder_1/sequential_4/dense_2/MatMulMatMul5autoencoder_1/sequential_4/flatten_1/Reshape:output:0@autoencoder_1/sequential_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9autoencoder_1/sequential_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_1_sequential_4_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ß
*autoencoder_1/sequential_4/dense_2/BiasAddBiasAdd3autoencoder_1/sequential_4/dense_2/MatMul:product:0Aautoencoder_1/sequential_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
8autoencoder_1/sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOpAautoencoder_1_sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0Ý
)autoencoder_1/sequential_5/dense_3/MatMulMatMul3autoencoder_1/sequential_4/dense_2/BiasAdd:output:0@autoencoder_1/sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
9autoencoder_1/sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_1_sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0à
*autoencoder_1/sequential_5/dense_3/BiasAddBiasAdd3autoencoder_1/sequential_5/dense_3/MatMul:product:0Aautoencoder_1/sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'autoencoder_1/sequential_5/dense_3/ReluRelu3autoencoder_1/sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*autoencoder_1/sequential_5/reshape_1/ShapeShape5autoencoder_1/sequential_5/dense_3/Relu:activations:0*
T0*
_output_shapes
:
8autoencoder_1/sequential_5/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:autoencoder_1/sequential_5/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:autoencoder_1/sequential_5/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2autoencoder_1/sequential_5/reshape_1/strided_sliceStridedSlice3autoencoder_1/sequential_5/reshape_1/Shape:output:0Aautoencoder_1/sequential_5/reshape_1/strided_slice/stack:output:0Cautoencoder_1/sequential_5/reshape_1/strided_slice/stack_1:output:0Cautoencoder_1/sequential_5/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4autoencoder_1/sequential_5/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :v
4autoencoder_1/sequential_5/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :v
4autoencoder_1/sequential_5/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : â
2autoencoder_1/sequential_5/reshape_1/Reshape/shapePack;autoencoder_1/sequential_5/reshape_1/strided_slice:output:0=autoencoder_1/sequential_5/reshape_1/Reshape/shape/1:output:0=autoencoder_1/sequential_5/reshape_1/Reshape/shape/2:output:0=autoencoder_1/sequential_5/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:å
,autoencoder_1/sequential_5/reshape_1/ReshapeReshape5autoencoder_1/sequential_5/dense_3/Relu:activations:0;autoencoder_1/sequential_5/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
3autoencoder_1/sequential_5/conv2d_transpose_5/ShapeShape5autoencoder_1/sequential_5/reshape_1/Reshape:output:0*
T0*
_output_shapes
:
Aautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Cautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
;autoencoder_1/sequential_5/conv2d_transpose_5/strided_sliceStridedSlice<autoencoder_1/sequential_5/conv2d_transpose_5/Shape:output:0Jautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice/stack:output:0Lautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice/stack_1:output:0Lautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5autoencoder_1/sequential_5/conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :w
5autoencoder_1/sequential_5/conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :w
5autoencoder_1/sequential_5/conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@ï
3autoencoder_1/sequential_5/conv2d_transpose_5/stackPackDautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice:output:0>autoencoder_1/sequential_5/conv2d_transpose_5/stack/1:output:0>autoencoder_1/sequential_5/conv2d_transpose_5/stack/2:output:0>autoencoder_1/sequential_5/conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:
Cautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Eautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Eautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
=autoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1StridedSlice<autoencoder_1/sequential_5/conv2d_transpose_5/stack:output:0Lautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1/stack:output:0Nautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1/stack_1:output:0Nautoencoder_1/sequential_5/conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskì
Mautoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOpVautoencoder_1_sequential_5_conv2d_transpose_5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0
>autoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transposeConv2DBackpropInput<autoencoder_1/sequential_5/conv2d_transpose_5/stack:output:0Uautoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:05autoencoder_1/sequential_5/reshape_1/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
Î
Dautoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOpMautoencoder_1_sequential_5_conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
5autoencoder_1/sequential_5/conv2d_transpose_5/BiasAddBiasAddGautoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose:output:0Lautoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@²
1autoencoder_1/sequential_5/conv2d_transpose_5/EluElu>autoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
3autoencoder_1/sequential_5/conv2d_transpose_6/ShapeShape?autoencoder_1/sequential_5/conv2d_transpose_5/Elu:activations:0*
T0*
_output_shapes
:
Aautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Cautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
;autoencoder_1/sequential_5/conv2d_transpose_6/strided_sliceStridedSlice<autoencoder_1/sequential_5/conv2d_transpose_6/Shape:output:0Jautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice/stack:output:0Lautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice/stack_1:output:0Lautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5autoencoder_1/sequential_5/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :w
5autoencoder_1/sequential_5/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :w
5autoencoder_1/sequential_5/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ï
3autoencoder_1/sequential_5/conv2d_transpose_6/stackPackDautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice:output:0>autoencoder_1/sequential_5/conv2d_transpose_6/stack/1:output:0>autoencoder_1/sequential_5/conv2d_transpose_6/stack/2:output:0>autoencoder_1/sequential_5/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:
Cautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Eautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Eautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
=autoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1StridedSlice<autoencoder_1/sequential_5/conv2d_transpose_6/stack:output:0Lautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1/stack:output:0Nautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1/stack_1:output:0Nautoencoder_1/sequential_5/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskì
Mautoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpVautoencoder_1_sequential_5_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0
>autoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput<autoencoder_1/sequential_5/conv2d_transpose_6/stack:output:0Uautoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0?autoencoder_1/sequential_5/conv2d_transpose_5/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
Î
Dautoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOpMautoencoder_1_sequential_5_conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
5autoencoder_1/sequential_5/conv2d_transpose_6/BiasAddBiasAddGautoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose:output:0Lautoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
1autoencoder_1/sequential_5/conv2d_transpose_6/EluElu>autoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
3autoencoder_1/sequential_5/conv2d_transpose_7/ShapeShape?autoencoder_1/sequential_5/conv2d_transpose_6/Elu:activations:0*
T0*
_output_shapes
:
Aautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Cautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
;autoencoder_1/sequential_5/conv2d_transpose_7/strided_sliceStridedSlice<autoencoder_1/sequential_5/conv2d_transpose_7/Shape:output:0Jautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice/stack:output:0Lautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice/stack_1:output:0Lautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5autoencoder_1/sequential_5/conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :w
5autoencoder_1/sequential_5/conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :w
5autoencoder_1/sequential_5/conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ï
3autoencoder_1/sequential_5/conv2d_transpose_7/stackPackDautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice:output:0>autoencoder_1/sequential_5/conv2d_transpose_7/stack/1:output:0>autoencoder_1/sequential_5/conv2d_transpose_7/stack/2:output:0>autoencoder_1/sequential_5/conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:
Cautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Eautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Eautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
=autoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1StridedSlice<autoencoder_1/sequential_5/conv2d_transpose_7/stack:output:0Lautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1/stack:output:0Nautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1/stack_1:output:0Nautoencoder_1/sequential_5/conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskì
Mautoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpVautoencoder_1_sequential_5_conv2d_transpose_7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0
>autoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transposeConv2DBackpropInput<autoencoder_1/sequential_5/conv2d_transpose_7/stack:output:0Uautoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0?autoencoder_1/sequential_5/conv2d_transpose_6/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Î
Dautoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOpMautoencoder_1_sequential_5_conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
5autoencoder_1/sequential_5/conv2d_transpose_7/BiasAddBiasAddGautoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose:output:0Lautoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity>autoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿë
NoOpNoOp;^autoencoder_1/sequential_4/conv2d_5/BiasAdd/ReadVariableOp:^autoencoder_1/sequential_4/conv2d_5/Conv2D/ReadVariableOp;^autoencoder_1/sequential_4/conv2d_6/BiasAdd/ReadVariableOp:^autoencoder_1/sequential_4/conv2d_6/Conv2D/ReadVariableOp:^autoencoder_1/sequential_4/dense_2/BiasAdd/ReadVariableOp9^autoencoder_1/sequential_4/dense_2/MatMul/ReadVariableOpE^autoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOpN^autoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOpE^autoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOpN^autoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOpE^autoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOpN^autoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:^autoencoder_1/sequential_5/dense_3/BiasAdd/ReadVariableOp9^autoencoder_1/sequential_5/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2x
:autoencoder_1/sequential_4/conv2d_5/BiasAdd/ReadVariableOp:autoencoder_1/sequential_4/conv2d_5/BiasAdd/ReadVariableOp2v
9autoencoder_1/sequential_4/conv2d_5/Conv2D/ReadVariableOp9autoencoder_1/sequential_4/conv2d_5/Conv2D/ReadVariableOp2x
:autoencoder_1/sequential_4/conv2d_6/BiasAdd/ReadVariableOp:autoencoder_1/sequential_4/conv2d_6/BiasAdd/ReadVariableOp2v
9autoencoder_1/sequential_4/conv2d_6/Conv2D/ReadVariableOp9autoencoder_1/sequential_4/conv2d_6/Conv2D/ReadVariableOp2v
9autoencoder_1/sequential_4/dense_2/BiasAdd/ReadVariableOp9autoencoder_1/sequential_4/dense_2/BiasAdd/ReadVariableOp2t
8autoencoder_1/sequential_4/dense_2/MatMul/ReadVariableOp8autoencoder_1/sequential_4/dense_2/MatMul/ReadVariableOp2
Dautoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOpDautoencoder_1/sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp2
Mautoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOpMautoencoder_1/sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp2
Dautoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOpDautoencoder_1/sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp2
Mautoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOpMautoencoder_1/sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2
Dautoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOpDautoencoder_1/sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp2
Mautoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOpMautoencoder_1/sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp2v
9autoencoder_1/sequential_5/dense_3/BiasAdd/ReadVariableOp9autoencoder_1/sequential_5/dense_3/BiasAdd/ReadVariableOp2t
8autoencoder_1/sequential_5/dense_3/MatMul/ReadVariableOp8autoencoder_1/sequential_5/dense_3/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1


.__inference_autoencoder_1_layer_call_fn_910050
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
	unknown_5:	 
	unknown_6:	 #
	unknown_7:@ 
	unknown_8:@#
	unknown_9: @

unknown_10: $

unknown_11: 

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_909986w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¤
â
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_909986
x-
sequential_4_909955: !
sequential_4_909957: -
sequential_4_909959: @!
sequential_4_909961:@&
sequential_4_909963:	!
sequential_4_909965:&
sequential_5_909968:	 "
sequential_5_909970:	 -
sequential_5_909972:@ !
sequential_5_909974:@-
sequential_5_909976: @!
sequential_5_909978: -
sequential_5_909980: !
sequential_5_909982:
identity¢$sequential_4/StatefulPartitionedCall¢$sequential_5/StatefulPartitionedCallÚ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallxsequential_4_909955sequential_4_909957sequential_4_909959sequential_4_909961sequential_4_909963sequential_4_909965*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909413¼
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_909968sequential_5_909970sequential_5_909972sequential_5_909974sequential_5_909976sequential_5_909978sequential_5_909980sequential_5_909982*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909758
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex


.__inference_autoencoder_1_layer_call_fn_910192
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
	unknown_5:	 
	unknown_6:	 #
	unknown_7:@ 
	unknown_8:@#
	unknown_9: @

unknown_10: $

unknown_11: 

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_909886w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex

¥
H__inference_sequential_4_layer_call_and_return_conditional_losses_909485
input_4)
conv2d_5_909468: 
conv2d_5_909470: )
conv2d_6_909473: @
conv2d_6_909475:@!
dense_2_909479:	
dense_2_909481:
identity¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢dense_2/StatefulPartitionedCallü
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_5_909468conv2d_5_909470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_909275
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_909473conv2d_6_909475*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_909292á
flatten_1/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_909304
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_909479dense_2_909481*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_909316w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
¤
â
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_909886
x-
sequential_4_909855: !
sequential_4_909857: -
sequential_4_909859: @!
sequential_4_909861:@&
sequential_4_909863:	!
sequential_4_909865:&
sequential_5_909868:	 "
sequential_5_909870:	 -
sequential_5_909872:@ !
sequential_5_909874:@-
sequential_5_909876: @!
sequential_5_909878: -
sequential_5_909880: !
sequential_5_909882:
identity¢$sequential_4/StatefulPartitionedCall¢$sequential_5/StatefulPartitionedCallÚ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallxsequential_4_909855sequential_4_909857sequential_4_909859sequential_4_909861sequential_4_909863sequential_4_909865*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909323¼
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_909868sequential_5_909870sequential_5_909872sequential_5_909874sequential_5_909876sequential_5_909878sequential_5_909880sequential_5_909882*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909675
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
ö	
×
-__inference_sequential_5_layer_call_fn_909798
input_5
unknown:	 
	unknown_0:	 #
	unknown_1:@ 
	unknown_2:@#
	unknown_3: @
	unknown_4: #
	unknown_5: 
	unknown_6:
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909758w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
	

-__inference_sequential_4_layer_call_fn_909338
input_4!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
Ê
¨
3__inference_conv2d_transpose_6_layer_call_fn_910878

inputs!
unknown: @
	unknown_0: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_909568
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
äe

H__inference_sequential_5_layer_call_and_return_conditional_losses_910637

inputs9
&dense_3_matmul_readvariableop_resource:	 6
'dense_3_biasadd_readvariableop_resource:	 U
;conv2d_transpose_5_conv2d_transpose_readvariableop_resource:@ @
2conv2d_transpose_5_biasadd_readvariableop_resource:@U
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_6_biasadd_readvariableop_resource: U
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_7_biasadd_readvariableop_resource:
identity¢)conv2d_transpose_5/BiasAdd/ReadVariableOp¢2conv2d_transpose_5/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_6/BiasAdd/ReadVariableOp¢2conv2d_transpose_6/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_7/BiasAdd/ReadVariableOp¢2conv2d_transpose_7/conv2d_transpose/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0z
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
reshape_1/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : Û
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_1/ReshapeReshapedense_3/Relu:activations:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
conv2d_transpose_5/ShapeShapereshape_1/Reshape:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_5/strided_sliceStridedSlice!conv2d_transpose_5/Shape:output:0/conv2d_transpose_5/strided_slice/stack:output:01conv2d_transpose_5/strided_slice/stack_1:output:01conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@è
conv2d_transpose_5/stackPack)conv2d_transpose_5/strided_slice:output:0#conv2d_transpose_5/stack/1:output:0#conv2d_transpose_5/stack/2:output:0#conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_5/strided_slice_1StridedSlice!conv2d_transpose_5/stack:output:01conv2d_transpose_5/strided_slice_1/stack:output:03conv2d_transpose_5/strided_slice_1/stack_1:output:03conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0
#conv2d_transpose_5/conv2d_transposeConv2DBackpropInput!conv2d_transpose_5/stack:output:0:conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:0reshape_1/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

)conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0À
conv2d_transpose_5/BiasAddBiasAdd,conv2d_transpose_5/conv2d_transpose:output:01conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
conv2d_transpose_5/EluElu#conv2d_transpose_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_transpose_6/ShapeShape$conv2d_transpose_5/Elu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : è
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0¡
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0$conv2d_transpose_5/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
conv2d_transpose_6/EluElu#conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
conv2d_transpose_7/ShapeShape$conv2d_transpose_6/Elu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :è
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0¡
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0$conv2d_transpose_6/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0À
conv2d_transpose_7/BiasAddBiasAdd,conv2d_transpose_7/conv2d_transpose:output:01conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity#conv2d_transpose_7/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
NoOpNoOp*^conv2d_transpose_5/BiasAdd/ReadVariableOp3^conv2d_transpose_5/conv2d_transpose/ReadVariableOp*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp*^conv2d_transpose_7/BiasAdd/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2V
)conv2d_transpose_5/BiasAdd/ReadVariableOp)conv2d_transpose_5/BiasAdd/ReadVariableOp2h
2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_7/BiasAdd/ReadVariableOp)conv2d_transpose_7/BiasAdd/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
äe

H__inference_sequential_5_layer_call_and_return_conditional_losses_910717

inputs9
&dense_3_matmul_readvariableop_resource:	 6
'dense_3_biasadd_readvariableop_resource:	 U
;conv2d_transpose_5_conv2d_transpose_readvariableop_resource:@ @
2conv2d_transpose_5_biasadd_readvariableop_resource:@U
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_6_biasadd_readvariableop_resource: U
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_7_biasadd_readvariableop_resource:
identity¢)conv2d_transpose_5/BiasAdd/ReadVariableOp¢2conv2d_transpose_5/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_6/BiasAdd/ReadVariableOp¢2conv2d_transpose_6/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_7/BiasAdd/ReadVariableOp¢2conv2d_transpose_7/conv2d_transpose/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0z
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
reshape_1/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : Û
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_1/ReshapeReshapedense_3/Relu:activations:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
conv2d_transpose_5/ShapeShapereshape_1/Reshape:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_5/strided_sliceStridedSlice!conv2d_transpose_5/Shape:output:0/conv2d_transpose_5/strided_slice/stack:output:01conv2d_transpose_5/strided_slice/stack_1:output:01conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@è
conv2d_transpose_5/stackPack)conv2d_transpose_5/strided_slice:output:0#conv2d_transpose_5/stack/1:output:0#conv2d_transpose_5/stack/2:output:0#conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_5/strided_slice_1StridedSlice!conv2d_transpose_5/stack:output:01conv2d_transpose_5/strided_slice_1/stack:output:03conv2d_transpose_5/strided_slice_1/stack_1:output:03conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0
#conv2d_transpose_5/conv2d_transposeConv2DBackpropInput!conv2d_transpose_5/stack:output:0:conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:0reshape_1/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

)conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0À
conv2d_transpose_5/BiasAddBiasAdd,conv2d_transpose_5/conv2d_transpose:output:01conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
conv2d_transpose_5/EluElu#conv2d_transpose_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_transpose_6/ShapeShape$conv2d_transpose_5/Elu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : è
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0¡
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0$conv2d_transpose_5/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
conv2d_transpose_6/EluElu#conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
conv2d_transpose_7/ShapeShape$conv2d_transpose_6/Elu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :è
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0¡
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0$conv2d_transpose_6/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0À
conv2d_transpose_7/BiasAddBiasAdd,conv2d_transpose_7/conv2d_transpose:output:01conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity#conv2d_transpose_7/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
NoOpNoOp*^conv2d_transpose_5/BiasAdd/ReadVariableOp3^conv2d_transpose_5/conv2d_transpose/ReadVariableOp*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp*^conv2d_transpose_7/BiasAdd/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2V
)conv2d_transpose_5/BiasAdd/ReadVariableOp)conv2d_transpose_5/BiasAdd/ReadVariableOp2h
2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_7/BiasAdd/ReadVariableOp)conv2d_transpose_7/BiasAdd/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á!

N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_909523

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Î
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_909657

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
´
F
*__inference_flatten_1_layer_call_fn_910762

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_909304a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Á!

N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_909568

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Æ

(__inference_dense_2_layer_call_fn_910777

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_909316o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


.__inference_autoencoder_1_layer_call_fn_910225
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
	unknown_5:	 
	unknown_6:	 #
	unknown_7:@ 
	unknown_8:@#
	unknown_9: @

unknown_10: $

unknown_11: 

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_909986w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex


.__inference_autoencoder_1_layer_call_fn_909917
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
	unknown_5:	 
	unknown_6:	 #
	unknown_7:@ 
	unknown_8:@#
	unknown_9: @

unknown_10: $

unknown_11: 

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_909886w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
	

-__inference_sequential_4_layer_call_fn_910446

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó	
Ö
-__inference_sequential_5_layer_call_fn_910536

inputs
unknown:	 
	unknown_0:	 #
	unknown_1:@ 
	unknown_2:@#
	unknown_3: @
	unknown_4: #
	unknown_5: 
	unknown_6:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909675w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
è
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910118
input_1-
sequential_4_910087: !
sequential_4_910089: -
sequential_4_910091: @!
sequential_4_910093:@&
sequential_4_910095:	!
sequential_4_910097:&
sequential_5_910100:	 "
sequential_5_910102:	 -
sequential_5_910104:@ !
sequential_5_910106:@-
sequential_5_910108: @!
sequential_5_910110: -
sequential_5_910112: !
sequential_5_910114:
identity¢$sequential_4/StatefulPartitionedCall¢$sequential_5/StatefulPartitionedCallà
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_4_910087sequential_4_910089sequential_4_910091sequential_4_910093sequential_4_910095sequential_4_910097*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909413¼
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_910100sequential_5_910102sequential_5_910104sequential_5_910106sequential_5_910108sequential_5_910110sequential_5_910112sequential_5_910114*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909758
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

ý
D__inference_conv2d_5_layer_call_and_return_conditional_losses_910737

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
Ç
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_910768

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¤
H__inference_sequential_4_layer_call_and_return_conditional_losses_909413

inputs)
conv2d_5_909396: 
conv2d_5_909398: )
conv2d_6_909401: @
conv2d_6_909403:@!
dense_2_909407:	
dense_2_909409:
identity¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢dense_2/StatefulPartitionedCallû
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_909396conv2d_5_909398*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_909275
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_909401conv2d_6_909403*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_909292á
flatten_1/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_909304
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_909407dense_2_909409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_909316w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
è
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910084
input_1-
sequential_4_910053: !
sequential_4_910055: -
sequential_4_910057: @!
sequential_4_910059:@&
sequential_4_910061:	!
sequential_4_910063:&
sequential_5_910066:	 "
sequential_5_910068:	 -
sequential_5_910070:@ !
sequential_5_910072:@-
sequential_5_910074: @!
sequential_5_910076: -
sequential_5_910078: !
sequential_5_910080:
identity¢$sequential_4/StatefulPartitionedCall¢$sequential_5/StatefulPartitionedCallà
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_4_910053sequential_4_910055sequential_4_910057sequential_4_910059sequential_4_910061sequential_4_910063*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909323¼
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_910066sequential_5_910068sequential_5_910070sequential_5_910072sequential_5_910074sequential_5_910076sequential_5_910078sequential_5_910080*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_909675
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ý
 
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910327
xN
4sequential_4_conv2d_5_conv2d_readvariableop_resource: C
5sequential_4_conv2d_5_biasadd_readvariableop_resource: N
4sequential_4_conv2d_6_conv2d_readvariableop_resource: @C
5sequential_4_conv2d_6_biasadd_readvariableop_resource:@F
3sequential_4_dense_2_matmul_readvariableop_resource:	B
4sequential_4_dense_2_biasadd_readvariableop_resource:F
3sequential_5_dense_3_matmul_readvariableop_resource:	 C
4sequential_5_dense_3_biasadd_readvariableop_resource:	 b
Hsequential_5_conv2d_transpose_5_conv2d_transpose_readvariableop_resource:@ M
?sequential_5_conv2d_transpose_5_biasadd_readvariableop_resource:@b
Hsequential_5_conv2d_transpose_6_conv2d_transpose_readvariableop_resource: @M
?sequential_5_conv2d_transpose_6_biasadd_readvariableop_resource: b
Hsequential_5_conv2d_transpose_7_conv2d_transpose_readvariableop_resource: M
?sequential_5_conv2d_transpose_7_biasadd_readvariableop_resource:
identity¢,sequential_4/conv2d_5/BiasAdd/ReadVariableOp¢+sequential_4/conv2d_5/Conv2D/ReadVariableOp¢,sequential_4/conv2d_6/BiasAdd/ReadVariableOp¢+sequential_4/conv2d_6/Conv2D/ReadVariableOp¢+sequential_4/dense_2/BiasAdd/ReadVariableOp¢*sequential_4/dense_2/MatMul/ReadVariableOp¢6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp¢?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp¢6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp¢?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp¢6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp¢?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp¢+sequential_5/dense_3/BiasAdd/ReadVariableOp¢*sequential_5/dense_3/MatMul/ReadVariableOp¨
+sequential_4/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Á
sequential_4/conv2d_5/Conv2DConv2Dx3sequential_4/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

,sequential_4/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¿
sequential_4/conv2d_5/BiasAddBiasAdd%sequential_4/conv2d_5/Conv2D:output:04sequential_4/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_4/conv2d_5/EluElu&sequential_4/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
+sequential_4/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ç
sequential_4/conv2d_6/Conv2DConv2D'sequential_4/conv2d_5/Elu:activations:03sequential_4/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

,sequential_4/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
sequential_4/conv2d_6/BiasAddBiasAdd%sequential_4/conv2d_6/Conv2D:output:04sequential_4/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_4/conv2d_6/EluElu&sequential_4/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
sequential_4/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ 	  ¬
sequential_4/flatten_1/ReshapeReshape'sequential_4/conv2d_6/Elu:activations:0%sequential_4/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_4/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0´
sequential_4/dense_2/MatMulMatMul'sequential_4/flatten_1/Reshape:output:02sequential_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_4/dense_2/BiasAddBiasAdd%sequential_4/dense_2/MatMul:product:03sequential_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0³
sequential_5/dense_3/MatMulMatMul%sequential_4/dense_2/BiasAdd:output:02sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0¶
sequential_5/dense_3/BiasAddBiasAdd%sequential_5/dense_3/MatMul:product:03sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
sequential_5/dense_3/ReluRelu%sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
sequential_5/reshape_1/ShapeShape'sequential_5/dense_3/Relu:activations:0*
T0*
_output_shapes
:t
*sequential_5/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_5/reshape_1/strided_sliceStridedSlice%sequential_5/reshape_1/Shape:output:03sequential_5/reshape_1/strided_slice/stack:output:05sequential_5/reshape_1/strided_slice/stack_1:output:05sequential_5/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_5/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_5/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_5/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 
$sequential_5/reshape_1/Reshape/shapePack-sequential_5/reshape_1/strided_slice:output:0/sequential_5/reshape_1/Reshape/shape/1:output:0/sequential_5/reshape_1/Reshape/shape/2:output:0/sequential_5/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:»
sequential_5/reshape_1/ReshapeReshape'sequential_5/dense_3/Relu:activations:0-sequential_5/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
%sequential_5/conv2d_transpose_5/ShapeShape'sequential_5/reshape_1/Reshape:output:0*
T0*
_output_shapes
:}
3sequential_5/conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_5/conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_5/conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_5/conv2d_transpose_5/strided_sliceStridedSlice.sequential_5/conv2d_transpose_5/Shape:output:0<sequential_5/conv2d_transpose_5/strided_slice/stack:output:0>sequential_5/conv2d_transpose_5/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_5/conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@©
%sequential_5/conv2d_transpose_5/stackPack6sequential_5/conv2d_transpose_5/strided_slice:output:00sequential_5/conv2d_transpose_5/stack/1:output:00sequential_5/conv2d_transpose_5/stack/2:output:00sequential_5/conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_5/conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_5/conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_5/conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_5/conv2d_transpose_5/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_5/stack:output:0>sequential_5/conv2d_transpose_5/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_5/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ë
0sequential_5/conv2d_transpose_5/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_5/stack:output:0Gsequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:0'sequential_5/reshape_1/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
²
6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ç
'sequential_5/conv2d_transpose_5/BiasAddBiasAdd9sequential_5/conv2d_transpose_5/conv2d_transpose:output:0>sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#sequential_5/conv2d_transpose_5/EluElu0sequential_5/conv2d_transpose_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%sequential_5/conv2d_transpose_6/ShapeShape1sequential_5/conv2d_transpose_5/Elu:activations:0*
T0*
_output_shapes
:}
3sequential_5/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_5/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_5/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_5/conv2d_transpose_6/strided_sliceStridedSlice.sequential_5/conv2d_transpose_6/Shape:output:0<sequential_5/conv2d_transpose_6/strided_slice/stack:output:0>sequential_5/conv2d_transpose_6/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_5/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ©
%sequential_5/conv2d_transpose_6/stackPack6sequential_5/conv2d_transpose_6/strided_slice:output:00sequential_5/conv2d_transpose_6/stack/1:output:00sequential_5/conv2d_transpose_6/stack/2:output:00sequential_5/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_5/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_5/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_5/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_5/conv2d_transpose_6/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_6/stack:output:0>sequential_5/conv2d_transpose_6/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_6/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Õ
0sequential_5/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_6/stack:output:0Gsequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:01sequential_5/conv2d_transpose_5/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
²
6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ç
'sequential_5/conv2d_transpose_6/BiasAddBiasAdd9sequential_5/conv2d_transpose_6/conv2d_transpose:output:0>sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#sequential_5/conv2d_transpose_6/EluElu0sequential_5/conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%sequential_5/conv2d_transpose_7/ShapeShape1sequential_5/conv2d_transpose_6/Elu:activations:0*
T0*
_output_shapes
:}
3sequential_5/conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_5/conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_5/conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_5/conv2d_transpose_7/strided_sliceStridedSlice.sequential_5/conv2d_transpose_7/Shape:output:0<sequential_5/conv2d_transpose_7/strided_slice/stack:output:0>sequential_5/conv2d_transpose_7/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_5/conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_5/conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :©
%sequential_5/conv2d_transpose_7/stackPack6sequential_5/conv2d_transpose_7/strided_slice:output:00sequential_5/conv2d_transpose_7/stack/1:output:00sequential_5/conv2d_transpose_7/stack/2:output:00sequential_5/conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_5/conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_5/conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_5/conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_5/conv2d_transpose_7/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_7/stack:output:0>sequential_5/conv2d_transpose_7/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_7/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Õ
0sequential_5/conv2d_transpose_7/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_7/stack:output:0Gsequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:01sequential_5/conv2d_transpose_6/Elu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
²
6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ç
'sequential_5/conv2d_transpose_7/BiasAddBiasAdd9sequential_5/conv2d_transpose_7/conv2d_transpose:output:0>sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity0sequential_5/conv2d_transpose_7/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp-^sequential_4/conv2d_5/BiasAdd/ReadVariableOp,^sequential_4/conv2d_5/Conv2D/ReadVariableOp-^sequential_4/conv2d_6/BiasAdd/ReadVariableOp,^sequential_4/conv2d_6/Conv2D/ReadVariableOp,^sequential_4/dense_2/BiasAdd/ReadVariableOp+^sequential_4/dense_2/MatMul/ReadVariableOp7^sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp7^sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp7^sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp,^sequential_5/dense_3/BiasAdd/ReadVariableOp+^sequential_5/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2\
,sequential_4/conv2d_5/BiasAdd/ReadVariableOp,sequential_4/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_5/Conv2D/ReadVariableOp+sequential_4/conv2d_5/Conv2D/ReadVariableOp2\
,sequential_4/conv2d_6/BiasAdd/ReadVariableOp,sequential_4/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_6/Conv2D/ReadVariableOp+sequential_4/conv2d_6/Conv2D/ReadVariableOp2Z
+sequential_4/dense_2/BiasAdd/ReadVariableOp+sequential_4/dense_2/BiasAdd/ReadVariableOp2X
*sequential_4/dense_2/MatMul/ReadVariableOp*sequential_4/dense_2/MatMul/ReadVariableOp2p
6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_5/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_5/conv2d_transpose/ReadVariableOp2p
6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_6/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2p
6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_7/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_7/conv2d_transpose/ReadVariableOp2Z
+sequential_5/dense_3/BiasAdd/ReadVariableOp+sequential_5/dense_3/BiasAdd/ReadVariableOp2X
*sequential_5/dense_3/MatMul/ReadVariableOp*sequential_5/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
	

-__inference_sequential_4_layer_call_fn_909445
input_4!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_909413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
Ê
¨
3__inference_conv2d_transpose_7_layer_call_fn_910921

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_909612
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¢Â
 
"__inference__traced_restore_911281
file_prefix:
 assignvariableop_conv2d_5_kernel: .
 assignvariableop_1_conv2d_5_bias: <
"assignvariableop_2_conv2d_6_kernel: @.
 assignvariableop_3_conv2d_6_bias:@4
!assignvariableop_4_dense_2_kernel:	-
assignvariableop_5_dense_2_bias:4
!assignvariableop_6_dense_3_kernel:	 .
assignvariableop_7_dense_3_bias:	 F
,assignvariableop_8_conv2d_transpose_5_kernel:@ 8
*assignvariableop_9_conv2d_transpose_5_bias:@G
-assignvariableop_10_conv2d_transpose_6_kernel: @9
+assignvariableop_11_conv2d_transpose_6_bias: G
-assignvariableop_12_conv2d_transpose_7_kernel: 9
+assignvariableop_13_conv2d_transpose_7_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: D
*assignvariableop_21_adam_conv2d_5_kernel_m: 6
(assignvariableop_22_adam_conv2d_5_bias_m: D
*assignvariableop_23_adam_conv2d_6_kernel_m: @6
(assignvariableop_24_adam_conv2d_6_bias_m:@<
)assignvariableop_25_adam_dense_2_kernel_m:	5
'assignvariableop_26_adam_dense_2_bias_m:<
)assignvariableop_27_adam_dense_3_kernel_m:	 6
'assignvariableop_28_adam_dense_3_bias_m:	 N
4assignvariableop_29_adam_conv2d_transpose_5_kernel_m:@ @
2assignvariableop_30_adam_conv2d_transpose_5_bias_m:@N
4assignvariableop_31_adam_conv2d_transpose_6_kernel_m: @@
2assignvariableop_32_adam_conv2d_transpose_6_bias_m: N
4assignvariableop_33_adam_conv2d_transpose_7_kernel_m: @
2assignvariableop_34_adam_conv2d_transpose_7_bias_m:D
*assignvariableop_35_adam_conv2d_5_kernel_v: 6
(assignvariableop_36_adam_conv2d_5_bias_v: D
*assignvariableop_37_adam_conv2d_6_kernel_v: @6
(assignvariableop_38_adam_conv2d_6_bias_v:@<
)assignvariableop_39_adam_dense_2_kernel_v:	5
'assignvariableop_40_adam_dense_2_bias_v:<
)assignvariableop_41_adam_dense_3_kernel_v:	 6
'assignvariableop_42_adam_dense_3_bias_v:	 N
4assignvariableop_43_adam_conv2d_transpose_5_kernel_v:@ @
2assignvariableop_44_adam_conv2d_transpose_5_bias_v:@N
4assignvariableop_45_adam_conv2d_transpose_6_kernel_v: @@
2assignvariableop_46_adam_conv2d_transpose_6_bias_v: N
4assignvariableop_47_adam_conv2d_transpose_7_kernel_v: @
2assignvariableop_48_adam_conv2d_transpose_7_bias_v:
identity_50¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*°
value¦B£2B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÔ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Þ
_output_shapesË
È::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp,assignvariableop_8_conv2d_transpose_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_conv2d_transpose_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp-assignvariableop_10_conv2d_transpose_6_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp+assignvariableop_11_conv2d_transpose_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_7_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_conv2d_transpose_5_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_conv2d_transpose_5_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_conv2d_transpose_6_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_conv2d_transpose_6_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_conv2d_transpose_7_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_34AssignVariableOp2assignvariableop_34_adam_conv2d_transpose_7_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_5_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_5_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_6_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_6_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_2_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_2_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_3_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_3_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_conv2d_transpose_5_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_conv2d_transpose_5_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_conv2d_transpose_6_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_conv2d_transpose_6_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_conv2d_transpose_7_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_48AssignVariableOp2assignvariableop_48_adam_conv2d_transpose_7_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: ò
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
C
input_18
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿD
output_18
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¨½
û
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures"
_tf_keras_model

0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ü
trace_0
 trace_1
!trace_2
"trace_32ñ
.__inference_autoencoder_1_layer_call_fn_909917
.__inference_autoencoder_1_layer_call_fn_910192
.__inference_autoencoder_1_layer_call_fn_910225
.__inference_autoencoder_1_layer_call_fn_910050®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0z trace_1z!trace_2z"trace_3
È
#trace_0
$trace_1
%trace_2
&trace_32Ý
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910327
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910429
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910084
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910118®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z#trace_0z$trace_1z%trace_2z&trace_3
ÌBÉ
!__inference__wrapped_model_909257input_1"
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
¬
'layer_with_weights-0
'layer-0
(layer_with_weights-1
(layer-1
)layer-2
*layer_with_weights-2
*layer-3
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ó
1layer_with_weights-0
1layer-0
2layer-1
3layer_with_weights-1
3layer-2
4layer_with_weights-2
4layer-3
5layer_with_weights-3
5layer-4
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_sequential
ë
<iter

=beta_1

>beta_2
	?decay
@learning_ratemÛmÜmÝmÞmßmàmámâmãmämåmæmçmèvévêvëvìvívîvïvðvñvòvóvôvõvö"
	optimizer
,
Aserving_default"
signature_map
):' 2conv2d_5/kernel
: 2conv2d_5/bias
):' @2conv2d_6/kernel
:@2conv2d_6/bias
!:	2dense_2/kernel
:2dense_2/bias
!:	 2dense_3/kernel
: 2dense_3/bias
3:1@ 2conv2d_transpose_5/kernel
%:#@2conv2d_transpose_5/bias
3:1 @2conv2d_transpose_6/kernel
%:# 2conv2d_transpose_6/bias
3:1 2conv2d_transpose_7/kernel
%:#2conv2d_transpose_7/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ïBì
.__inference_autoencoder_1_layer_call_fn_909917input_1"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
éBæ
.__inference_autoencoder_1_layer_call_fn_910192x"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
éBæ
.__inference_autoencoder_1_layer_call_fn_910225x"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ïBì
.__inference_autoencoder_1_layer_call_fn_910050input_1"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910327x"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910429x"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910084input_1"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910118input_1"®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ý
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

kernel
bias
 I_jit_compiled_convolution_op"
_tf_keras_layer
Ý
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

kernel
bias
 P_jit_compiled_convolution_op"
_tf_keras_layer
¥
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
»
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ê
btrace_0
ctrace_1
dtrace_2
etrace_32ÿ
-__inference_sequential_4_layer_call_fn_909338
-__inference_sequential_4_layer_call_fn_910446
-__inference_sequential_4_layer_call_fn_910463
-__inference_sequential_4_layer_call_fn_909445À
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
 zbtrace_0zctrace_1zdtrace_2zetrace_3
Ö
ftrace_0
gtrace_1
htrace_2
itrace_32ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_910489
H__inference_sequential_4_layer_call_and_return_conditional_losses_910515
H__inference_sequential_4_layer_call_and_return_conditional_losses_909465
H__inference_sequential_4_layer_call_and_return_conditional_losses_909485À
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
 zftrace_0zgtrace_1zhtrace_2zitrace_3
»
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
¥
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

kernel
bias
 |_jit_compiled_convolution_op"
_tf_keras_layer
á
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op"
_tf_keras_layer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ò
trace_0
trace_1
trace_2
trace_32ÿ
-__inference_sequential_5_layer_call_fn_909694
-__inference_sequential_5_layer_call_fn_910536
-__inference_sequential_5_layer_call_fn_910557
-__inference_sequential_5_layer_call_fn_909798À
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
 ztrace_0ztrace_1ztrace_2ztrace_3
Þ
trace_0
trace_1
trace_2
trace_32ë
H__inference_sequential_5_layer_call_and_return_conditional_losses_910637
H__inference_sequential_5_layer_call_and_return_conditional_losses_910717
H__inference_sequential_5_layer_call_and_return_conditional_losses_909823
H__inference_sequential_5_layer_call_and_return_conditional_losses_909848À
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
 ztrace_0ztrace_1ztrace_2ztrace_3
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ËBÈ
$__inference_signature_wrapper_910159input_1"
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
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ï
¡trace_02Ð
)__inference_conv2d_5_layer_call_fn_910726¢
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
 z¡trace_0

¢trace_02ë
D__inference_conv2d_5_layer_call_and_return_conditional_losses_910737¢
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
 z¢trace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ï
¨trace_02Ð
)__inference_conv2d_6_layer_call_fn_910746¢
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
 z¨trace_0

©trace_02ë
D__inference_conv2d_6_layer_call_and_return_conditional_losses_910757¢
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
 z©trace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
ð
¯trace_02Ñ
*__inference_flatten_1_layer_call_fn_910762¢
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
 z¯trace_0

°trace_02ì
E__inference_flatten_1_layer_call_and_return_conditional_losses_910768¢
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
 z°trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
î
¶trace_02Ï
(__inference_dense_2_layer_call_fn_910777¢
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
 z¶trace_0

·trace_02ê
C__inference_dense_2_layer_call_and_return_conditional_losses_910787¢
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
 z·trace_0
 "
trackable_list_wrapper
<
'0
(1
)2
*3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bý
-__inference_sequential_4_layer_call_fn_909338input_4"À
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
ÿBü
-__inference_sequential_4_layer_call_fn_910446inputs"À
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
ÿBü
-__inference_sequential_4_layer_call_fn_910463inputs"À
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
Bý
-__inference_sequential_4_layer_call_fn_909445input_4"À
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
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_910489inputs"À
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
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_910515inputs"À
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
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_909465input_4"À
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
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_909485input_4"À
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
î
½trace_02Ï
(__inference_dense_3_layer_call_fn_910796¢
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
 z½trace_0

¾trace_02ê
C__inference_dense_3_layer_call_and_return_conditional_losses_910807¢
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
 z¾trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ð
Ätrace_02Ñ
*__inference_reshape_1_layer_call_fn_910812¢
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
 zÄtrace_0

Åtrace_02ì
E__inference_reshape_1_layer_call_and_return_conditional_losses_910826¢
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
 zÅtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
ù
Ëtrace_02Ú
3__inference_conv2d_transpose_5_layer_call_fn_910835¢
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
 zËtrace_0

Ìtrace_02õ
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_910869¢
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
 zÌtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ù
Òtrace_02Ú
3__inference_conv2d_transpose_6_layer_call_fn_910878¢
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
 zÒtrace_0

Ótrace_02õ
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_910912¢
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
 zÓtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ù
Ùtrace_02Ú
3__inference_conv2d_transpose_7_layer_call_fn_910921¢
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
 zÙtrace_0

Útrace_02õ
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_910954¢
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
 zÚtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
C
10
21
32
43
54"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bý
-__inference_sequential_5_layer_call_fn_909694input_5"À
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
ÿBü
-__inference_sequential_5_layer_call_fn_910536inputs"À
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
ÿBü
-__inference_sequential_5_layer_call_fn_910557inputs"À
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
Bý
-__inference_sequential_5_layer_call_fn_909798input_5"À
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
B
H__inference_sequential_5_layer_call_and_return_conditional_losses_910637inputs"À
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
B
H__inference_sequential_5_layer_call_and_return_conditional_losses_910717inputs"À
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
B
H__inference_sequential_5_layer_call_and_return_conditional_losses_909823input_5"À
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
B
H__inference_sequential_5_layer_call_and_return_conditional_losses_909848input_5"À
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
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
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
ÝBÚ
)__inference_conv2d_5_layer_call_fn_910726inputs"¢
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
øBõ
D__inference_conv2d_5_layer_call_and_return_conditional_losses_910737inputs"¢
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
ÝBÚ
)__inference_conv2d_6_layer_call_fn_910746inputs"¢
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
øBõ
D__inference_conv2d_6_layer_call_and_return_conditional_losses_910757inputs"¢
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
ÞBÛ
*__inference_flatten_1_layer_call_fn_910762inputs"¢
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
ùBö
E__inference_flatten_1_layer_call_and_return_conditional_losses_910768inputs"¢
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
ÜBÙ
(__inference_dense_2_layer_call_fn_910777inputs"¢
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
÷Bô
C__inference_dense_2_layer_call_and_return_conditional_losses_910787inputs"¢
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
ÜBÙ
(__inference_dense_3_layer_call_fn_910796inputs"¢
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
÷Bô
C__inference_dense_3_layer_call_and_return_conditional_losses_910807inputs"¢
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
ÞBÛ
*__inference_reshape_1_layer_call_fn_910812inputs"¢
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
ùBö
E__inference_reshape_1_layer_call_and_return_conditional_losses_910826inputs"¢
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
çBä
3__inference_conv2d_transpose_5_layer_call_fn_910835inputs"¢
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
Bÿ
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_910869inputs"¢
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
çBä
3__inference_conv2d_transpose_6_layer_call_fn_910878inputs"¢
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
Bÿ
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_910912inputs"¢
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
çBä
3__inference_conv2d_transpose_7_layer_call_fn_910921inputs"¢
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
Bÿ
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_910954inputs"¢
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
.:, 2Adam/conv2d_5/kernel/m
 : 2Adam/conv2d_5/bias/m
.:, @2Adam/conv2d_6/kernel/m
 :@2Adam/conv2d_6/bias/m
&:$	2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
&:$	 2Adam/dense_3/kernel/m
 : 2Adam/dense_3/bias/m
8:6@ 2 Adam/conv2d_transpose_5/kernel/m
*:(@2Adam/conv2d_transpose_5/bias/m
8:6 @2 Adam/conv2d_transpose_6/kernel/m
*:( 2Adam/conv2d_transpose_6/bias/m
8:6 2 Adam/conv2d_transpose_7/kernel/m
*:(2Adam/conv2d_transpose_7/bias/m
.:, 2Adam/conv2d_5/kernel/v
 : 2Adam/conv2d_5/bias/v
.:, @2Adam/conv2d_6/kernel/v
 :@2Adam/conv2d_6/bias/v
&:$	2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
&:$	 2Adam/dense_3/kernel/v
 : 2Adam/dense_3/bias/v
8:6@ 2 Adam/conv2d_transpose_5/kernel/v
*:(@2Adam/conv2d_transpose_5/bias/v
8:6 @2 Adam/conv2d_transpose_6/kernel/v
*:( 2Adam/conv2d_transpose_6/bias/v
8:6 2 Adam/conv2d_transpose_7/kernel/v
*:(2Adam/conv2d_transpose_7/bias/v­
!__inference__wrapped_model_9092578¢5
.¢+
)&
input_1ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
output_1*'
output_1ÿÿÿÿÿÿÿÿÿÊ
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910084}<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ê
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910118}<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ä
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910327w6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ä
I__inference_autoencoder_1_layer_call_and_return_conditional_losses_910429w6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ¢
.__inference_autoencoder_1_layer_call_fn_909917p<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ¢
.__inference_autoencoder_1_layer_call_fn_910050p<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿ
.__inference_autoencoder_1_layer_call_fn_910192j6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ
.__inference_autoencoder_1_layer_call_fn_910225j6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿ´
D__inference_conv2d_5_layer_call_and_return_conditional_losses_910737l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 
)__inference_conv2d_5_layer_call_fn_910726_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ ´
D__inference_conv2d_6_layer_call_and_return_conditional_losses_910757l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_6_layer_call_fn_910746_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ@ã
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_910869I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 »
3__inference_conv2d_transpose_5_layer_call_fn_910835I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ã
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_910912I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 »
3__inference_conv2d_transpose_6_layer_call_fn_910878I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ã
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_910954I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 »
3__inference_conv2d_transpose_7_layer_call_fn_910921I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
C__inference_dense_2_layer_call_and_return_conditional_losses_910787]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense_2_layer_call_fn_910777P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
C__inference_dense_3_layer_call_and_return_conditional_losses_910807]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ 
 |
(__inference_dense_3_layer_call_fn_910796P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ª
E__inference_flatten_1_layer_call_and_return_conditional_losses_910768a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_flatten_1_layer_call_fn_910762T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿª
E__inference_reshape_1_layer_call_and_return_conditional_losses_910826a0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 
*__inference_reshape_1_layer_call_fn_910812T0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ ½
H__inference_sequential_4_layer_call_and_return_conditional_losses_909465q@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
H__inference_sequential_4_layer_call_and_return_conditional_losses_909485q@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
H__inference_sequential_4_layer_call_and_return_conditional_losses_910489p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
H__inference_sequential_4_layer_call_and_return_conditional_losses_910515p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_909338d@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_909445d@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_910446c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_910463c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¿
H__inference_sequential_5_layer_call_and_return_conditional_losses_909823s8¢5
.¢+
!
input_5ÿÿÿÿÿÿÿÿÿ
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ¿
H__inference_sequential_5_layer_call_and_return_conditional_losses_909848s8¢5
.¢+
!
input_5ÿÿÿÿÿÿÿÿÿ
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ¾
H__inference_sequential_5_layer_call_and_return_conditional_losses_910637r7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ¾
H__inference_sequential_5_layer_call_and_return_conditional_losses_910717r7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_5_layer_call_fn_909694f8¢5
.¢+
!
input_5ÿÿÿÿÿÿÿÿÿ
p 

 
ª " ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_909798f8¢5
.¢+
!
input_5ÿÿÿÿÿÿÿÿÿ
p

 
ª " ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_910536e7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª " ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_910557e7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª " ÿÿÿÿÿÿÿÿÿ»
$__inference_signature_wrapper_910159C¢@
¢ 
9ª6
4
input_1)&
input_1ÿÿÿÿÿÿÿÿÿ";ª8
6
output_1*'
output_1ÿÿÿÿÿÿÿÿÿ