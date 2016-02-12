Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A95ECE00C89; Fri, 12 Feb 2016 09:47:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.111.90 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Feb 2016 09:47:14 PST
Received: from BLU004-OMC2S15.hotmail.com (blu004-omc2s15.hotmail.com
	[65.55.111.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 048DBE00AF4
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 09:47:13 -0800 (PST)
Received: from BLU168-W100 ([65.55.111.72]) by BLU004-OMC2S15.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Fri, 12 Feb 2016 09:46:12 -0800
X-TMN: [5ed6PE9bZE5QVXidhznhG+TcI/DgqDof]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU168-W1003599A17726942FB8DD4AEBA90@phx.gbl>
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Feb 2016 09:46:12 -0800
Importance: Normal
In-Reply-To: <CAJTo0Lb5FK7C3FduCRM+zDNCOiHKkNwgPVWBxEVBd2N5gawsAQ@mail.gmail.com>
References: <BLU168-W106A58D34CE0CD2EFBF941EBA90@phx.gbl>,
	<CAJTo0Lb5FK7C3FduCRM+zDNCOiHKkNwgPVWBxEVBd2N5gawsAQ@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Feb 2016 17:46:12.0539 (UTC)
	FILETIME=[437488B0:01D165BD]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: native tool is not installed before it is used
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
X-List-Received-Date: Fri, 12 Feb 2016 17:47:16 -0000
Content-Type: multipart/alternative;
	boundary="_172308f4-71a4-4d09-b7be-0e57db35c98c_"

--_172308f4-71a4-4d09-b7be-0e57db35c98c_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks. that works. but i am confused :)
in the original recipe=2C i was doing do_autogen "after" configure=2C assum=
ing do_configure will install all the needed dependencies and i can use tho=
se native tools after that.=20
but with your solution (do_configure_prepend=2C which  works)=2C  it gives =
the impression we are using proto-c-native before proto-c-native is install=
ed. how does the dependencies are ordered?
thanks=2CSridhar Pitchai

From: ross.burton@intel.com
Date: Fri=2C 12 Feb 2016 10:35:10 +0000
Subject: Re: [yocto] native tool is not installed before it is used
To: sridhar.pitchai@outlook.com
CC: yocto@yoctoproject.org


On 12 February 2016 at 06:10=2C Sridhar Pitchai <sridhar.pitchai@outlook.co=
m> wrote:
I have a recipe=2C where It need protobuf-c-compiler (natvily) to auto gene=
rate files before it can be compiled. i have added protobuf-c-native in the=
 DEPENDS list. but the compilation is failling at do_autogen=2C compiling t=
he proto-c is not installed in staging_bindir_native.But if  bitbake protob=
uf-c-native manually and then bitbake the recipe it is working fine.=20
That's because DEPENDS =3D "foo" actually means do_configure[depends] =3D "=
foo".  This is so that packages can fetch/unpack/patch whilst their build d=
ependencies are being built.
Instead of adding a new task to run autogen which will run *before* configu=
re and therefore before your dependencies have been build=2C simply do_conf=
igure_prepend() if the operations need to happen before cmake runs.
Ross 		 	   		  =

--_172308f4-71a4-4d09-b7be-0e57db35c98c_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Thanks. that works. but i am con=
fused :)<div><br></div><div>in the original recipe=2C i was doing do_autoge=
n "after" configure=2C assuming do_configure will install all the needed de=
pendencies and i can use those native tools after that.&nbsp=3B</div><div><=
br></div><div>but with your solution (do_configure_prepend=2C which &nbsp=
=3Bworks)=2C &nbsp=3Bit gives the impression we are using proto-c-native be=
fore proto-c-native is installed.&nbsp=3B</div><div>how does the dependenci=
es are ordered?</div><div><br></div><div>thanks=2C</div><div>Sridhar Pitcha=
i</div><div><div><div><br><br><div><hr id=3D"stopSpelling">From: ross.burto=
n@intel.com<br>Date: Fri=2C 12 Feb 2016 10:35:10 +0000<br>Subject: Re: [yoc=
to] native tool is not installed before it is used<br>To: sridhar.pitchai@o=
utlook.com<br>CC: yocto@yoctoproject.org<br><br><div dir=3D"ltr"><div class=
=3D"ecxgmail_extra"><br><div class=3D"ecxgmail_quote">On 12 February 2016 a=
t 06:10=2C Sridhar Pitchai <span dir=3D"ltr">&lt=3B<a href=3D"mailto:sridha=
r.pitchai@outlook.com" target=3D"_blank">sridhar.pitchai@outlook.com</a>&gt=
=3B</span> wrote:<br><blockquote class=3D"ecxgmail_quote" style=3D"border-l=
eft:1px #ccc solid=3Bpadding-left:1ex=3B"><div>I have a recipe=2C where It =
need protobuf-c-compiler (natvily) to auto generate files before it can be =
compiled. i have added protobuf-c-native in the DEPENDS list. but the compi=
lation is failling at do_autogen=2C compiling the proto-c is not installed =
in staging_bindir_native.</div><div>But if &nbsp=3Bbitbake protobuf-c-nativ=
e manually and then bitbake the recipe it is working fine.&nbsp=3B</div></b=
lockquote></div><br>That's because DEPENDS =3D "foo" actually means do_conf=
igure[depends] =3D "foo".&nbsp=3B This is so that packages can fetch/unpack=
/patch whilst their build dependencies are being built.</div><div class=3D"=
ecxgmail_extra"><br></div><div class=3D"ecxgmail_extra">Instead of adding a=
 new task to run autogen which will run *before* configure and therefore be=
fore your dependencies have been build=2C simply do_configure_prepend() if =
the operations need to happen before cmake runs.</div><div class=3D"ecxgmai=
l_extra"><br></div><div class=3D"ecxgmail_extra">Ross</div></div></div></di=
v></div></div> 		 	   		  </div></body>
</html>=

--_172308f4-71a4-4d09-b7be-0e57db35c98c_--
