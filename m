Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED8DBE009C2; Thu, 21 May 2015 14:21:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 796E4E00902
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 14:21:53 -0700 (PDT)
Received: by qgfa63 with SMTP id a63so66494qgf.0
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 14:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dMTk+L5bO5/H9XIBYB+prTPKWOL7qohIQyrrwK2ImrI=;
	b=gJiXwZ+9DmK3338/YyfSC/ys3YGGUTnsN9jyTZs+bGwIerNa7FhAMExs/+zfpSOv1q
	API9B/JyfEcJUUY5VdWb2bZEUM/Nfh5q441M9cLqLDdF4d2bnAZtcvR6C5eVD5+1cDXF
	xHxGgSZD8FAUJJQhqRhFk7AC5WE5QphFN/SkkgGyy7Bk6c1gcYPrSctv4HeUwVoCMuy5
	v0jWbfbZ5HDhAQ6CEHAOv+QHKhxIHWmiZmOucKuUbwddtW5CwVpQSgJZ2vRBci/VXJ0J
	Q+901T7wkK3mg1sR6KeaQWM85RUBxSeKW1Pcd458J2sREvsENgmhwtuId/gjERedMK+0
	x+8w==
MIME-Version: 1.0
X-Received: by 10.55.15.135 with SMTP id 7mr11270239qkp.12.1432243313319; Thu,
	21 May 2015 14:21:53 -0700 (PDT)
Received: by 10.140.83.102 with HTTP; Thu, 21 May 2015 14:21:53 -0700 (PDT)
Date: Thu, 21 May 2015 23:21:53 +0200
Message-ID: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: yocto@yoctoproject.org
Subject: How to enable php5 (php_5.5.24.bb) support for postgresql
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 May 2015 21:21:56 -0000
Content-Type: multipart/alternative; boundary=001a11371070ec256b05169e21ca

--001a11371070ec256b05169e21ca
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day,


I am working with the intel Edison. Therefore I am using the
meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look here:
https://github.com/openembedded/meta-openembedded/branches/stale). Using
another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=E2=80=9D =
is recommended
for the intel Edison within the official intel documents.


Nevertheless I added apache2_2.4.9.bb and postgresql_9.2.4.bb to my custom
image. However, php5 support is missing. Therefore I downloaded the php
recipe from the current master branch and put it in my custom layer:


https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f4baf=
75e2427216b39c641a12/meta-oe/recipes-devtools/php/


<https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f4ba=
f75e2427216b39c641a12/meta-oe/recipes-devtools/php/>

Furthermore I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with the follow=
ing content in
the same folder:


PACKAGECONFIG_append +=3D "apache2"

PACKAGECONFIG_append +=3D "pgsql"


bitbake php results in the following errors:


ERROR: Nothing PROVIDES 'uw-imap' [=E2=80=A6] but php/php_5.5.24.bb DEPENDS=
 on or
otherwise requires it)

ERROR: Required build target 'php' has no buildable providers.

Missing or unbuildable dependency chain was: ['php', 'uw-imap']


So I removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D from php_5.5.=
24.bb.  Result:


ERROR: Nothing PROVIDES 'postgresql-native' [=E2=80=A6] but /php/php_5.5.24=
.bb
DEPENDS on or otherwise requires it). Close matches:

  postgresql

  strace-native

  popt-native

ERROR: Required build target 'php' has no buildable providers.

Missing or unbuildable dependency chain was: ['php', 'php-native',
'postgresql-native']


Google does not show much for postgresql-native related to yocto. "bitbake
postgresql" is running fine... If I remove BBCLASSEXTEND =3D "native" from
the recipe I get the following result:


ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.

Rerun configure task after fixing this. The path was
"php/5.5.24-r0/php-5.5.24'

ERROR: Function failed: do_qa_configure

ERROR: Logfile of failure stored in:
"php/5.5.24-r0/temp/log.do_configure.22410

ERROR: Task 5 (php/php_5.5.24.bb, do_configure) failed with exit code '1'




I appreciate any advice on how to set up php5 for postgresql.

--001a11371070ec256b05169e21ca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<p class=3D"MsoNormal"><span style lang=3D"EN-US">Good day,</span></p><p cl=
ass=3D"MsoNormal"><span style lang=3D"EN-US"><br></span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">I am
working with the intel Edison. Therefore I am using the
meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look here: <a href=
=3D"https://github.com/openembedded/meta-openembedded/branches/stale">https=
://github.com/openembedded/meta-openembedded/branches/stale</a>).
Using another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=E2=
=80=9D is recommended
for the intel Edison within the official intel documents.</span></p><p clas=
s=3D"MsoNormal"><span style lang=3D"EN-US"><br></span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">Nevertheless
I added <a href=3D"http://apache2_2.4.9.bb">apache2_2.4.9.bb</a> and <a hre=
f=3D"http://postgresql_9.2.4.bb">postgresql_9.2.4.bb</a> to my custom image=
. However,
php5 support is missing. Therefore I downloaded the php recipe from the cur=
rent
master branch and put it in my custom layer:</span></p><p class=3D"MsoNorma=
l"><span style lang=3D"EN-US"><br></span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US"><a href=3D"https://github=
.com/openembedded/meta-openembedded/blob/b070899000162e7f4baf75e2427216b39c=
641a12/meta-oe/recipes-devtools/php/">https://github.com/openembedded/meta-=
openembedded/blob/b070899000162e7f4baf75e2427216b39c641a12/meta-oe/recipes-=
devtools/php/</a></span></p><p class=3D"MsoNormal"><span style lang=3D"EN-U=
S"><a href=3D"https://github.com/openembedded/meta-openembedded/blob/b07089=
9000162e7f4baf75e2427216b39c641a12/meta-oe/recipes-devtools/php/"><br></a>
</span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">Furthermore
I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with the following content<=
/span><span style lang=3D"EN-US"><span style lang=3D"EN-US"> in the same fo=
lder</span>:</span></p><p class=3D"MsoNormal"><br><span style lang=3D"EN-US=
"></span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">PACKAGECONFIG_append
+=3D &quot;apache2&quot;</span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">PACKAGECONFIG_append
+=3D &quot;pgsql&quot;</span></p><p class=3D"MsoNormal"><br><span style lan=
g=3D"EN-US"></span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">bitbake php
results in the following errors:</span></p><p class=3D"MsoNormal"><span sty=
le lang=3D"EN-US"><br></span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Nothing PROVIDES &#39;uw-imap&#39; [=E2=80=A6] but php/<a href=
=3D"http://php_5.5.24.bb">php_5.5.24.bb</a>
DEPENDS on or otherwise requires it)</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Required build target &#39;php&#39; has no
buildable providers.</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">Missing or unbuildable dependency chain was:
[&#39;php&#39;, &#39;uw-imap&#39;]</span></p><p class=3D"MsoNormal" style=
=3D"margin-left:35.4pt"><span style lang=3D"EN-US"><br></span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">So I
removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D from </span><span =
style lang=3D"EN-US"><span style lang=3D"EN-US"><a href=3D"http://php_5.5.2=
4.bb">php_5.5.24.bb</a></span>.<span style>=C2=A0
</span>Result:</span></p><p class=3D"MsoNormal"><span style lang=3D"EN-US">=
<br></span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Nothing PROVIDES &#39;postgresql-native&#39; [=E2=80=A6]
but /php/<a href=3D"http://php_5.5.24.bb">php_5.5.24.bb</a> DEPENDS on or o=
therwise requires it). Close matches:</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US"><span style>=C2=A0
</span>postgresql</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US"><span style>=C2=A0
</span>strace-native</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US"><span style>=C2=A0
</span>popt-native</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Required build target &#39;php&#39; has no
buildable providers.</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">Missing or unbuildable dependency chain was:
[&#39;php&#39;, &#39;php-native&#39;, &#39;postgresql-native&#39;]</span></=
p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US"><br></span></p>



<p class=3D"MsoNormal"><span style lang=3D"EN-US">Google does
not show much for postgresql-native related to yocto. &quot;bitbake postgre=
sql&quot; is running fine... If I remove BBCLASSEXTEND
=3D &quot;native&quot; from the recipe I get the following result:</span></=
p><p class=3D"MsoNormal"><span style lang=3D"EN-US"><br></span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: This autoconf log indicates errors, it
looked at host include and/or library paths while determining system
capabilities.</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">Rerun configure task after fixing this. The
path was &quot;php/5.5.24-r0/php-5.5.24&#39;</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Function failed: do_qa_configure</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Logfile of failure stored in: &quot;php/5.5.24-r0/temp/log.do_co=
nfigure.22410</span></p>

<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span style lang=3D"EN-=
US">ERROR: Task 5 (php/<a href=3D"http://php_5.5.24.bb">php_5.5.24.bb</a>,
do_configure) failed with exit code &#39;1&#39;</span></p>

<p class=3D"MsoNormal"><span style lang=3D"EN-US"><br></span></p><span styl=
e=3D"font-size:11pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;" lang=3D"EN-US"></span><span style lang=3D"EN-US">=C2=A0</=
span>

<p class=3D"MsoNormal"><span style lang=3D"EN-US">I appreciate
any advice on how to set up php5 for postgresql.<br></span></p>

</div>

--001a11371070ec256b05169e21ca--
