Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75F6BC3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 18:28:34 +0000 (UTC)
Subject: Yocto converting package.json into npm-shrinkwrap.json incorrectly
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Eden Prairie, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 May 2025 11:28:32 -0700
Message-ID: <UaT7.1747765712253527855.KxSx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GlYzHr73H0Il2yWieD7h"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 18:28:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65380

--GlYzHr73H0Il2yWieD7h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

$ bitbake --version
BitBake Build Tool Core version 2.8.0
$ cat ~/eps-yocto/poky/meta-poky/conf/distro/poky.conf | grep DISTRO_VERSIO=
N
DISTRO_VERSION =3D "5.0.1"

I have a legacy codebase including back-end and front-end code. I am trying=
 to use 'devtool add' to create a new recipe that I can modify from that po=
int. I am including the URL for the git repo of our codebase as an argument=
. For some reason yocto appears to be doing some sort of search of the code=
base for specific files. For example, I had a tar file masquerading as a .B=
IN file that yocto threw a x509 certificate error over. Resolved that and n=
ow I have a...

bb.fetch2.ParameterError: URL: 'npmsw:///home/user/eps-yocto/build/exos-x-b=
mc/tmp/work/recipetool-iio7tbt8/source/git/npm-shrinkwrap.json' has invalid=
 parameters. Unsupported dependency: @babel/helper-string-parser
ERROR: Command 'script -e -q -c "recipetool --color=3Dalways create --devto=
ol -o /tmp/devtools9kvo0br 'git@myrepolocation/repo.git' =C2=A0-x /home/use=
r/eps-yocto/build/exos-x-bmc/fetchuri -N appsv-tool --srcbranch main" /dev/=
null' failed

...error. Looking into it with our web guys, and it appears yocto found our=
 package.json file(which it then converts into npm-shrinkwrap.json)(which a=
lso does not contain 'babel/helper-string-parser'), but does contain the fo=
llowing:

....
"devDependencies" : {
"@babel/core" : "=3D7.21.5" ,
"@babel/preset-env" : "=3D7.21.5" ,
"@vue/compiler-sfc" : "=3D3.2.47" ,
....

We think the 'helper-string-parser' is being brought in via the @babel/core=
 dependency, however, it does look a little different from the others that =
got generated in the vicinity inside npm-shrinkwrap.json. Besides not havin=
g dependencies, the only thing that looks different is the lack of the "dev=
" : true ,.

"node_modules/@babel/helper-skip-transparent-expression-wrappers" : {
"version" : "7.25.9" ,
"dev" : true ,
"license" : "MIT" ,
"dependencies" : {
"@babel/traverse" : "^7.25.9" ,
"@babel/types" : "^7.25.9"
},
"engines" : {
"node" : ">=3D6.9.0"
}
},
"node_modules/@babel/helper-string-parser" : {
"version" : "7.25.9" ,
"license" : "MIT" ,
"engines" : {
"node" : ">=3D6.9.0"
}
},
"node_modules/@babel/helper-validator-identifier" : {
"version" : "7.25.9" ,
"license" : "MIT" ,
"engines" : {
"node" : ">=3D6.9.0"
}
},

Although, that's not entirely true, as you can see 'helper-validator-identi=
fier' doesn't have a dev/true line either, everything above 'helper-string-=
parser' does. I just think that helper-string-parser was just the first ins=
tance to fail, everything else is is bound to fail as well.

--GlYzHr73H0Il2yWieD7h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>$ bitbake --version</div>
<div>BitBake Build Tool Core version 2.8.0</div>
<div>$ cat ~/eps-yocto/poky/meta-poky/conf/distro/poky.conf | grep DISTRO_V=
ERSION</div>
<div>DISTRO_VERSION =3D "5.0.1"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>I have a legacy codebase including back-end and front-end code. I am t=
rying to use 'devtool add' to create a new recipe that I can modify from th=
at point. I am including the URL for the git repo of our codebase as an arg=
ument. For some reason yocto appears to be doing some sort of search of the=
 codebase for specific files. For example, I had a tar file masquerading as=
 a .BIN file that yocto threw a x509 certificate error over. Resolved that =
and now I have a...<br /><br />bb.fetch2.ParameterError: URL: 'npmsw:///hom=
e/user/eps-yocto/build/exos-x-bmc/tmp/work/recipetool-iio7tbt8/source/git/n=
pm-shrinkwrap.json' has invalid parameters. Unsupported dependency: @babel/=
helper-string-parser<br />ERROR: Command 'script -e -q -c "recipetool --col=
or=3Dalways create --devtool -o /tmp/devtools9kvo0br 'git@myrepolocation/re=
po.git' &nbsp;-x /home/user/eps-yocto/build/exos-x-bmc/fetchuri -N appsv-to=
ol --srcbranch main" /dev/null' failed</div>
<div>&nbsp;</div>
<div>...error. Looking into it with our web guys, and it appears yocto foun=
d our package.json file(which it then converts into npm-shrinkwrap.json)(wh=
ich also does not contain 'babel/helper-string-parser'), but does contain t=
he following:<br /><br />....</div>
<div>
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><span style=3D"color: #cccccc;">&nbsp; </span><span style=3D"color: #9=
cdcfe;">"devDependencies"</span><span style=3D"color: #cccccc;">: {</span><=
/div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">"@babel/core"</span><span style=3D"color: #cccccc;">: </span=
><span style=3D"color: #ce9178;">"=3D7.21.5"</span><span style=3D"color: #c=
ccccc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">"@babel/preset-env"</span><span style=3D"color: #cccccc;">: =
</span><span style=3D"color: #ce9178;">"=3D7.21.5"</span><span style=3D"col=
or: #cccccc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">"@vue/compiler-sfc"</span><span style=3D"color: #cccccc;">: =
</span><span style=3D"color: #ce9178;">"=3D3.2.47"</span><span style=3D"col=
or: #cccccc;">,</span></div>
</div>
</div>
<div>....</div>
<div>&nbsp;</div>
<div>We think the 'helper-string-parser' is being brought in via the @babel=
/core dependency, however, it does look a little different from the others =
that got generated in the vicinity inside npm-shrinkwrap.json. Besides not =
having dependencies, the only thing that looks different is the lack of the=
 <span style=3D"color: #9cdcfe;">"dev"</span><span style=3D"color: #cccccc;=
">: </span><span style=3D"color: #569cd6;">true</span><span style=3D"color:=
 #cccccc;">,</span>.</div>
<div>&nbsp;</div>
<div>
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">"node_modules/@babel/helper-skip-transparent-expression-wrap=
pers"</span><span style=3D"color: #cccccc;">: {</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"version"</span><span style=3D"color: #cccccc;">: </s=
pan><span style=3D"color: #ce9178;">"7.25.9"</span><span style=3D"color: #c=
ccccc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"dev"</span><span style=3D"color: #cccccc;">: </span>=
<span style=3D"color: #569cd6;">true</span><span style=3D"color: #cccccc;">=
,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"license"</span><span style=3D"color: #cccccc;">: </s=
pan><span style=3D"color: #ce9178;">"MIT"</span><span style=3D"color: #cccc=
cc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"dependencies"</span><span style=3D"color: #cccccc;">=
: {</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">"@babel/traverse"</span><span style=3D"color: =
#cccccc;">: </span><span style=3D"color: #ce9178;">"^7.25.9"</span><span st=
yle=3D"color: #cccccc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">"@babel/types"</span><span style=3D"color: #cc=
cccc;">: </span><span style=3D"color: #ce9178;">"^7.25.9"</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; },</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"engines"</span><span style=3D"color: #cccccc;">: {</=
span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">"node"</span><span style=3D"color: #cccccc;">:=
 </span><span style=3D"color: #ce9178;">"&gt;=3D6.9.0"</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; }</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; },</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">"node_modules/@babel/helper-string-parser"</span><span style=
=3D"color: #cccccc;">: {</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"version"</span><span style=3D"color: #cccccc;">: </s=
pan><span style=3D"color: #ce9178;">"7.25.9"</span><span style=3D"color: #c=
ccccc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"license"</span><span style=3D"color: #cccccc;">: </s=
pan><span style=3D"color: #ce9178;">"MIT"</span><span style=3D"color: #cccc=
cc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"engines"</span><span style=3D"color: #cccccc;">: {</=
span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">"node"</span><span style=3D"color: #cccccc;">:=
 </span><span style=3D"color: #ce9178;">"&gt;=3D6.9.0"</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; }</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; },</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">"node_modules/@babel/helper-validator-identifier"</span><spa=
n style=3D"color: #cccccc;">: {</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"version"</span><span style=3D"color: #cccccc;">: </s=
pan><span style=3D"color: #ce9178;">"7.25.9"</span><span style=3D"color: #c=
ccccc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"license"</span><span style=3D"color: #cccccc;">: </s=
pan><span style=3D"color: #ce9178;">"MIT"</span><span style=3D"color: #cccc=
cc;">,</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; </span><span styl=
e=3D"color: #9cdcfe;">"engines"</span><span style=3D"color: #cccccc;">: {</=
span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">"node"</span><span style=3D"color: #cccccc;">:=
 </span><span style=3D"color: #ce9178;">"&gt;=3D6.9.0"</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; }</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; },</span></div>
</div>
</div>
<div>&nbsp;</div>
<div>Although, that's not entirely true, as you can see 'helper-validator-i=
dentifier' doesn't have a dev/true line either, everything above 'helper-st=
ring-parser' does. I just think that helper-string-parser was just the firs=
t instance to fail, everything else is is bound to fail as well.</div>

--GlYzHr73H0Il2yWieD7h--

