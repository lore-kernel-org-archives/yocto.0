Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E38C4E00C75; Fri, 16 Sep 2016 04:46:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3689]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.43 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Sep 2016 04:46:22 PDT
Received: from DUB004-OMC3S34.hotmail.com (dub004-omc3s34.hotmail.com
	[157.55.2.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64261E00C70
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 04:46:21 -0700 (PDT)
Received: from DUB127-W74 ([157.55.2.7]) by DUB004-OMC3S34.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Fri, 16 Sep 2016 04:45:18 -0700
X-TMN: [AJVf+zhEEHpvSHMHDidBIQIsKwxNG9/J]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB127-W74594485FCFFB10C4DC5E4DAF30@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 16 Sep 2016 12:45:18 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Sep 2016 11:45:18.0790 (UTC)
	FILETIME=[CC746660:01D2100F]
Subject: QA python3 runtime dependency
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
X-List-Received-Date: Fri, 16 Sep 2016 11:46:24 -0000
Content-Type: multipart/alternative;
	boundary="_6c051f21-edaf-47cf-b7ac-37b7abb5829a_"

--_6c051f21-edaf-47cf-b7ac-37b7abb5829a_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My top-level python3 scripts have "#!/usr/bin/python3" and the recipe RDEDE=
NDS on python3.
There's no problem in the final system as python3 is present in /usr/bin as=
 expected.
What I do not understand is why I am getting a QA warning : "requires /usr/=
bin/python3=2C but no providers found in RDEPENDS? [file-rdeps]".
Any ideas why this is happening?
Thanks=2CChris
 		 	   		  =

--_6c051f21-edaf-47cf-b7ac-37b7abb5829a_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>My top-level python3 scripts hav=
e "#!/usr/bin/python3" and the recipe RDEDENDS on python3.<div><br></div><d=
iv>There's no problem in the final system as python3 is present in /usr/bin=
 as expected.<div><br></div><div>What I do not understand is why I am getti=
ng a QA warning : "requires /usr/bin/python3=2C but no providers found in R=
DEPENDS? [file-rdeps]".</div></div><div><br></div><div>Any ideas why this i=
s happening?</div><div><br></div><div>Thanks=2C</div><div>Chris</div><div><=
br></div> 		 	   		  </div></body>
</html>=

--_6c051f21-edaf-47cf-b7ac-37b7abb5829a_--
