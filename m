Subject: [HELP] Create a new image recipe based on a (changed) existing one #yocto
To: yocto@lists.yoctoproject.org
From: joao.ccabral@parceiros.nos.pt
X-Originating-Location: Lisbon, PT (95.92.177.196)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Feb 2020 01:49:26 -0800
Message-ID: <XtHp.1581328166773849833.dkfd@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="L4HuaaJg4EfdeI9cAJK6"

--L4HuaaJg4EfdeI9cAJK6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to create an image recipe based on an existing one.
I've searched online, and I could find such an example.

My problem is that the image I what to serve as a base is changed in
another layer and I want to include those changes.

Ex:

(tree)

Prj_root
-> layer1
-> recipes-core
-> images
-> my-image.bb=C2=A0 [This is the base recipe]
-> layer2
-> recipes-core
-> images
-> my-image.bbappend [This is the changed one]
-> layer3
-> recipes-core
-> images
-> my-image-dev.bb [this is the new image, based on my-
image]

my-image.bbappend is something like this:

--------------------- my-image.bbappend ---------
PROVIDES =3D "product"

IMAGE_INSTALL +=3D " \
<some_packages> \
"
IMAGE_INSTALL_remove +=3D " \
<other-packeges>
"

(+ other functions related with signing the image)
_________________________________________________

The final image is created with 'bitbake product'.
And, I want to create a dev image that must be based on the current
"product" image (my-image.bb + my-image.bbappend) with some dev
packages.
So, I need to include the changes that my-image.bbapend does to this
dev image I'm trying to create.

Tried simply creating a new image that should be a copy of the working
one, and then add the needed packages for development.
So I did the following...

---------------- my-image-dev.bbappend ----------

SUMMARY =3D "dev Image"

require layer1/recipes-core/images/my-image.bb
------------------------------------------------

I can run 'bitbake my-image-dev' and it runs, but doesn't produce the
same output as 'bitbake product'.

Also, If I run 'bitbake my-image-dev' 1st, it finishes fine. Running
'bitbake product' after makes a bunch of other tasks and finishes fine.
Running again 'bitbake my-image-dev' finishes with an error on a
specific task. ( It shows that they are not building the same thing)

How can I do what I need?
NOTE: I can't change anything in the layer1 and layer2.

PS. Also tried to require the bbappend file, but bitbake fails saying
that it's not a bitbake file.

Thanks in advance.

Jo=C3=A3o Cabral

--L4HuaaJg4EfdeI9cAJK6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu M=
ono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4)=
;">Hi,<span class=3D"Apple-converted-space">&nbsp;</span></span><br style=
=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font=
-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br s=
tyle=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; f=
ont-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><s=
pan style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mon=
o'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);"=
>I'm trying to create an image recipe based on an existing one.</span><br s=
tyle=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; f=
ont-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><s=
pan style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mon=
o'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);"=
>I've searched online, and I could find such an example.</span><br style=3D=
"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-siz=
e: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=
=
=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font=
-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span=
 style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono';=
 font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">My=
 problem is that the image I what to serve as a base is changed in</span><b=
r style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'=
; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /=
><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu =
Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4=
);">another layer and I want to include those changes.</span><br style=3D"c=
aret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size:=
 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=
=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font=
-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span=
 style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono';=
 font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">Ex=
:</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ub=
untu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0=
, 0.4);" /><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: =
'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0=
, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-fam=
ily: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba=
(0, 0, 0, 0.4);">(tree)</span><br style=3D"caret-color: #4c4c4c; color: #4c=
4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlig=
ht-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c4c; color: =
#4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-high=
light-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; co=
lor: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap=
-highlight-color: rgba(0, 0, 0, 0.4);">Prj_root</span><br style=3D"caret-co=
lor: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.333=
3px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"car=
et-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 1=
7.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nb=
sp; -&gt; layer1</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; f=
ont-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-colo=
r: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c=
4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight=
-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&g=
t; recipes-core</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; fo=
nt-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color=
: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4=
c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-=
color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; -&gt; images</span><br style=3D"caret-color: #4c4c4c; c=
olor: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-ta=
p-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c=
4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webk=
it-tap-highlight-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; my-image=
.bb&nbsp; [This is the base recipe]</span><br style=3D"caret-color: #4c4c4c=
; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit=
-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4=
c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -w=
ebkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp; -&gt; la=
yer2</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: =
'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0=
, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-fam=
ily: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba=
(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; recipes-c=
ore</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: '=
Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0,=
 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-fami=
ly: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(=
0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; -&gt; images</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4=
c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-=
color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #=
4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highl=
ight-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; my-image.bbappend [T=
his is the changed one]</span><br style=3D"caret-color: #4c4c4c; color: #4c=
4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlig=
ht-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color=
: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-hi=
ghlight-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp; -&gt; layer3</span><=
br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono=
'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" =
/><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu=
 Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.=
4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; recipes-core</span><b=
r style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'=
; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /=
><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu =
Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4=
);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt=
; images</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-fami=
ly: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(=
0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font=
-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: =
rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; my-image-dev.bb [this is the new=
 image, based on my-</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4=
c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-=
color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #=
4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highl=
ight-color: rgba(0, 0, 0, 0.4);">image]</span><br style=3D"caret-color: #4c=
4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -we=
bkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: =
#4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; =
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-co=
lor: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.333=
3px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">my-image.bbappend is=
 something like this:</span><br style=3D"caret-color: #4c4c4c; color: #4c4c=
4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight=
-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c4c; color: #4=
c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highli=
ght-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; colo=
r: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-h=
ighlight-color: rgba(0, 0, 0, 0.4);">--------------------- my-image.bbappen=
d ---------</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-f=
amily: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rg=
ba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; f=
ont-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-colo=
r: rgba(0, 0, 0, 0.4);">PROVIDES =3D "product"</span><br style=3D"caret-col=
or: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333=
px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-=
color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3=
333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"c=
aret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size:=
 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">IMAGE_INSTALL=
 +=3D " \</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-fam=
ily: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba=
(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; fon=
t-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color:=
 rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;s=
ome_packages&gt; \</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c;=
 font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-co=
lor: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c=
4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlig=
ht-color: rgba(0, 0, 0, 0.4);">"</span><br style=3D"caret-color: #4c4c4c; c=
olor: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-ta=
p-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c=
4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webk=
it-tap-highlight-color: rgba(0, 0, 0, 0.4);">IMAGE_INSTALL_remove +=3D " \<=
/span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubun=
tu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, =
0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: =
'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0=
, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;other-packeges&g=
t;</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'U=
buntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, =
0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-famil=
y: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0=
, 0, 0, 0.4);">"</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; f=
ont-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-colo=
r: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c4c; color: #4c4c4c=
; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-c=
olor: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4=
c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highli=
ght-color: rgba(0, 0, 0, 0.4);">(+ other functions related with signing the=
 image)</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-famil=
y: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0=
, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-=
family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: r=
gba(0, 0, 0, 0.4);">_________________________________________________</span=
><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mo=
no'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);=
" /><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu=
 Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.=
4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'U=
buntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, =
0, 0.4);">The final image is created with 'bitbake product'.</span><br styl=
e=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font=
-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span=
 style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono';=
 font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">An=
d, I want to create a dev image that must be based on the current</span><br=
 style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono';=
 font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" />=
<span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu M=
ono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4)=
;">"product" image (my-image.bb + my-image.bbappend) with some dev</span><b=
r style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'=
; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /=
><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu =
Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4=
);">packages.</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font=
-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: =
rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c;=
 font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-co=
lor: rgba(0, 0, 0, 0.4);">So, I need to include the changes that my-image.b=
bapend does to this</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c=
; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-c=
olor: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4=
c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highli=
ght-color: rgba(0, 0, 0, 0.4);">dev image I'm trying to create.</span><br s=
tyle=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; f=
ont-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><b=
r style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'=
; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /=
><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mo=
no'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);=
" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubun=
tu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, =
0.4);">Tried simply creating a new image that should be a copy of the worki=
ng</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'U=
buntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, =
0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-famil=
y: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0=
, 0, 0, 0.4);">one, and then add the needed packages for development.</span=
><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mo=
no'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);=
" /><span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubun=
tu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, =
0.4);">So I did the following...</span><br style=3D"caret-color: #4c4c4c; c=
olor: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-ta=
p-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c4c=
; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit=
-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4=
c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -w=
ebkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">---------------- my-image-d=
ev.bbappend ----------</span><br style=3D"caret-color: #4c4c4c; color: #4c4=
c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highligh=
t-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c4c; color: #=
4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highl=
ight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; col=
or: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-=
highlight-color: rgba(0, 0, 0, 0.4);">SUMMARY =3D "dev Image"</span><br sty=
le=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; fon=
t-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br =
style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; =
font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><=
span style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mo=
no'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);=
">require layer1/recipes-core/images/my-image.bb</span><br style=3D"caret-c=
olor: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.33=
33px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"ca=
ret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: =
17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">--------------=
----------------------------------</span><br style=3D"caret-color: #4c4c4c;=
 color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-=
tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c=
4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webk=
it-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: =
#4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; =
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">I can run 'bitbake my-ima=
ge-dev' and it runs, but doesn't produce the</span><br style=3D"caret-color=
: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px=
; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-=
color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3=
333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">same output as 'bi=
tbake product'.</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; fo=
nt-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-color=
: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color: #4c4c4c; color: #4c4c4c;=
 font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-co=
lor: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c=
4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlig=
ht-color: rgba(0, 0, 0, 0.4);">Also, If I run 'bitbake my-image-dev' 1st, i=
t finishes fine. Running</span><br style=3D"caret-color: #4c4c4c; color: #4=
c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highli=
ght-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; colo=
r: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-h=
ighlight-color: rgba(0, 0, 0, 0.4);">'bitbake product' after makes a bunch =
of other tasks and finishes fine.</span><br style=3D"caret-color: #4c4c4c; =
color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-t=
ap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4=
c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -web=
kit-tap-highlight-color: rgba(0, 0, 0, 0.4);">Running again 'bitbake my-ima=
ge-dev' finishes with an error on a</span><br style=3D"caret-color: #4c4c4c=
; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit=
-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4=
c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -w=
ebkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">specific task. ( It shows t=
hat they are not building the same thing)</span><br style=3D"caret-color: #=
4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -=
webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret-color=
: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px=
; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-=
color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3=
333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">How can I do what =
I need?<span class=3D"Apple-converted-space">&nbsp;</span></span><br style=
=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font=
-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span=
 style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono';=
 font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">NO=
TE: I can't change anything in the layer1 and layer2.</span><br style=3D"ca=
ret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: =
17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D=
"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-siz=
e: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span sty=
le=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; fon=
t-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">PS. Al=
so tried to require the bbappend file, but bitbake fails saying</span><br s=
tyle=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; f=
ont-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><s=
pan style=3D"caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mon=
o'; font-size: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);"=
>that it's not a bitbake file.</span><br style=3D"caret-color: #4c4c4c; col=
or: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-=
highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c=
; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit=
-tap-highlight-color: rgba(0, 0, 0, 0.4);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;</span><br style=3D"caret-color: #4c4c4c; color: #4c4c4c; f=
ont-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight-colo=
r: rgba(0, 0, 0, 0.4);" /><span style=3D"caret-color: #4c4c4c; color: #4c4c=
4c; font-family: 'Ubuntu Mono'; font-size: 17.3333px; -webkit-tap-highlight=
-color: rgba(0, 0, 0, 0.4);">Thanks in advance.</span><br style=3D"caret-co=
lor: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.333=
3px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><br style=3D"caret=
-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size: 17.=
3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);" /><span style=3D"=
caret-color: #4c4c4c; color: #4c4c4c; font-family: 'Ubuntu Mono'; font-size=
: 17.3333px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);">Jo&atilde;o =
Cabral</span>

--L4HuaaJg4EfdeI9cAJK6--
