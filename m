Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23E34E00B01; Tue, 20 Jun 2017 10:41:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-09v.sys.comcast.net
	(resqmta-ch2-09v.sys.comcast.net [69.252.207.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFB0E0094C
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 10:41:38 -0700 (PDT)
Received: from resomta-ch2-16v.sys.comcast.net ([69.252.207.112])
	by resqmta-ch2-09v.sys.comcast.net with SMTP
	id NN9UdRQfqQe9cNN9ldSYVf; Tue, 20 Jun 2017 17:41:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1497980497;
	bh=+ZEa3IRpL9rQ2OVZj9trENHvwQy99wCHuzpV1qtMNsc=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=nYb7UJbJoBJ1GkQgo4iSChPdVMCBN9S7OBvRj/kmBoD4zhprhAHuAusGqYqCnIK/9
	7VCMJhV0BUv9JToSIreEVRIh541yXrL5d9ddHzrqoXKwt0E8Jk0ymoZ/9nMYxACzOi
	yQuRi4p2pdH0PknNDcwSQWDT2wl8Lc9u8knjdybC4NE+4dNtlrbRaswquT60fD41P1
	tCR3fa6DEgGYaHxNfnOuju05jTDdPdcnJyug3DTcyDY29ztj+OCFBIIe/S+jyANsYV
	nCg9vlw3sil6ij2/Qc9Nhn2gUPw1cSqYh+yDbBu7eIorIqR/3zCS8yw96ObKSm68yW
	HNG1o0M0SieSA==
Received: from oxapp-asb-50o.email.comcast.net ([96.118.63.161])
	by resomta-ch2-16v.sys.comcast.net with SMTP
	id NN9ld5TXB96jtNN9ld0H7n; Tue, 20 Jun 2017 17:41:37 +0000
Date: Tue, 20 Jun 2017 13:41:36 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: yocto@yoctoproject.org
Message-ID: <560536631.531798.1497980497225@connect.xfinity.com>
In-Reply-To: <451891208.531376.1497979988430@connect.xfinity.com>
References: <451891208.531376.1497979988430@connect.xfinity.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev20
X-Originating-IP: ::ffff:216.156.69.42
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfDX7aWZKUB8XWe13ZhiFh2M/dZ38Wwq1GxgAymqDc2OFGkNkmBuKO89bbUzu6ic7+E2Nm6Bw79NpmFxHKToAfLDO/85kyzIqQTbsS9K9B1R2mbw3LPzp
	ofkB8MLkFm31k/ztk7cJsB+IWUQKbLWk4EiRR5fvkSKB7/xF/uvxxnV9MgQVQg3kepOf8yqMeC0DDVMFPfMX1vOAB+VOYAeVVjU=
Subject: Re: patch files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: RUSSELL PETERSON <bluehills7@comcast.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Jun 2017 17:41:42 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_531797_249974571.1497980497219"

------=_Part_531797_249974571.1497980497219
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Sorry.  I'm doing 5 things at once here.


I am fetching a source RPM inside a simple RECIPE.


> On June 20, 2017 at 1:33 PM RUSSELL PETERSON <bluehills7@comcast.net> wrote:
> 
> 
>     Hello,
> 
> 
>     I am fetching a src RPM file inside a simple library.  The RPM basically contains a tar file with the source and 2 patch files.  How to I apply those patch files?  If I put them in the SRC_URI the fetch fails.  Is there a way I can add them to some list that do_patche uses or do something in do_patch_prepend??
> 
> 
>     Regards,
> 
> 
>     Russell
> 
> 


 

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


------=_Part_531797_249974571.1497980497219
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Sorry. &#160;I&#39;m doing 5 things at once here.</p><p><br=
></p><p>I am fetching a source RPM inside a simple RECIPE.</p><p><br></p><b=
lockquote type=3D"cite">On June 20, 2017 at 1:33 PM RUSSELL PETERSON &#60;b=
luehills7@comcast.net&#62; wrote:<br><br><p><span style=3D"color: #333333; =
font-family: helvetica, arial, sans-serif; font-size: 12pt; background-colo=
r: #ffffff;">Hello,</span><br></p><p><span style=3D"color: #333333; font-fa=
mily: helvetica, arial, sans-serif; font-size: 12pt; background-color: #fff=
fff;"><br></span></p><p><span style=3D"color: #333333; font-family: helveti=
ca, arial, sans-serif; font-size: 12pt; background-color: #ffffff;">I am fe=
tching a src RPM file inside a simple library. &#160;The RPM basically cont=
ains a tar file with the source and 2 patch files. &#160;How to I apply tho=
se patch files? &#160;If I put them in the SRC_URI the fetch fails. &#160;I=
s there a way I can add them to some list that do_patche uses or do somethi=
ng in do_patch_prepend??</span></p><p><span style=3D"color: #333333; font-f=
amily: helvetica, arial, sans-serif; font-size: 12pt; background-color: #ff=
ffff;"><br></span></p><p><span style=3D"color: #333333; font-family: helvet=
ica, arial, sans-serif; font-size: 12pt; background-color: #ffffff;">Regard=
s,</span></p><p><span style=3D"color: #333333; font-family: helvetica, aria=
l, sans-serif; font-size: 12pt; background-color: #ffffff;"><br></span></p>=
<p><span style=3D"color: #333333; font-family: helvetica, arial, sans-serif=
; font-size: 12pt; background-color: #ffffff;">Russell</span></p><p><span s=
tyle=3D"color: #333333; font-family: helvetica, arial, sans-serif; font-siz=
e: 12pt; background-color: #ffffff;"><br></span></p></blockquote><p><br>&#1=
60;</p><blockquote type=3D"cite">-- <br>___________________________________=
____________<br>yocto mailing list<br>yocto@yoctoproject.org<br>https://lis=
ts.yoctoproject.org/listinfo/yocto<br></blockquote></body></html>
=20

------=_Part_531797_249974571.1497980497219--
