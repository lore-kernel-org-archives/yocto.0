Subject: devtool build failure first time but builds fine successfully second time. #yocto #devtool
To: yocto@lists.yoctoproject.org
From: raulpblooper@gmail.com
X-Originating-Location: Faridabad, Haryana, IN (171.79.66.30)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Jun 2021 02:48:29 -0700
Message-ID: <Jqwl.1623836909133904283.nc6j@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="V5TEieU4A19xbaCpSBr3"

--V5TEieU4A19xbaCpSBr3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,
I am tyro in yocto ,

I am having a strange issue where I am trying to build the recipe=C2=A0 us=
ing=C2=A0=C2=A0 =C2=A0devtool build <recipe>=C2=A0 . It fails first time bu=
t builds second time.

It flags an error related to some linkage of shared library .
But when I checked the shared library , it is present at the same place,

First Error :

ERROR: <recipe-name>1-1.0-r0 do_compile: Execution of 'Path to build direc=
tory/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/<recipe-name=
>/1.0-r0/temp/run.do_compile.12944' failed with exit code 2

Second Error :

-L/<path to build directory>/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-l=
inux-gnueabi/<my recipe>1/1.0-r0/r1-1.0/<aplication name>/../<shared lib fo=
lder>/<sub folder name>=C2=A0 -Wl,-rpath,"\$ORIGIN/../<shared lib folder>/<=
sub folder name>" -l<shared lib name without lib> -pthread

When i run the same command again **( devtool build recipe
)** it builds Successfully the application referring this shared library.

Does anyone know this peculiar issue.?
Since it builds fine with no change i suspect no mistake in my Cmakefiles.

Please assist,

--V5TEieU4A19xbaCpSBr3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello All, <br />I am tyro in yocto , <br /><br />I am having a strang=
e issue where I am trying to build the recipe&nbsp; using&nbsp;&nbsp; &nbsp=
;devtool build &lt;recipe&gt;&nbsp; . It fails first time but builds second=
 time.<br /><br /><br /></div>
<div>&nbsp;</div>
<div>It flags an error related to some linkage of shared library .</div>
<div>But when I checked the shared library , it is present at the same pla=
ce,</div>
<div>&nbsp;</div>
<div>First Error :&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; ERROR: &lt;recipe-name&gt;1-1.0-r0 do_compile: Executio=
n of 'Path to build directory/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-l=
inux-gnueabi/&lt;recipe-name&gt;/1.0-r0/temp/run.do_compile.12944' failed w=
ith exit code 2</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Second Error :&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; -L/&lt;path to build directory&gt;/tmp-glibc/work/corte=
xa7t2hf-neon-vfpv4-ostl-linux-gnueabi/&lt;my recipe&gt;1/1.0-r0/r1-1.0/&lt;=
aplication name&gt;/../&lt;shared lib folder&gt;/&lt;sub folder name&gt;&nb=
sp; -Wl,-rpath,"\$ORIGIN/../&lt;shared lib folder&gt;/&lt;sub folder name&g=
t;" -l&lt;shared lib name without lib&gt; -pthread&nbsp;</div>
<div>&nbsp;</div>
<div>When i run the same command again **( devtool build recipe&nbsp;</div=
>
<div>)** it builds Successfully the application referring this shared libr=
ary.</div>
<div>&nbsp;</div>
<div>Does anyone know this peculiar issue.?</div>
<div>Since it builds fine with no change i suspect no mistake in my Cmakef=
iles.</div>
<div>&nbsp;</div>
<div>Please assist,</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--V5TEieU4A19xbaCpSBr3--
