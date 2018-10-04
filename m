Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D908E00A9B; Thu,  4 Oct 2018 10:14:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tdhammer99[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.169 listed in list.dnswl.org]
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B19AE003D9
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 10:14:16 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id s69-v6so8097486oie.10
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 10:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hL952oqjuvx5Nqfbu+Pei1CQy5v6WK0ICYgj8bDorfM=;
	b=Td2obTwt7MW+EKsDsXAQa8MyiMojnzrh7Kwx3KGwoDW2s+/gdrhDqzXaUQZu1IrHBG
	8QSnQjP6733ryjo3yN3P6BAQ9w4b1g0MqukbR3mQmtLlnxG8EVN8DHJ+JmFv9nyjfagw
	hpSJ7/Z3E6ZZl13dSk5FSOFwdONKiZcg1AvKGXC91DIw0Uz6Xcxw9gAsowG/RuAVAZs/
	vKtaU+OLlhmbHi05YvVk0W/99UomvRABz9F0ukMwj8kY5LZeedQzhwrRIM6SJ/BQYOO1
	Uoen016Dx43zfYyLmu05hlhlp+I1LMyclF0pMC5tw4uy7ZrnbtUhRj7P1zny6C2nuJhO
	+mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hL952oqjuvx5Nqfbu+Pei1CQy5v6WK0ICYgj8bDorfM=;
	b=We6B2E2VEa+WOkp7mazktKrrm6UjkWVVrIkM7sIQMt84RuALHnnIKmp+IS4oyzCr2y
	yDxD+OwE+rZVElF5Kr/15wuzsHOz1qE8zLzhTiNIp0bLYwG7P8N9+2IlkfTsDjK1XuB7
	s7WXMwczxLUwi1mAE9APG74K8xRlNdcZMSMKwNPSNVmA39odDVk/MUJNYfWOQnYwvG4z
	dSWdX2C9S1OvEoTwcSIPbBqJECXF1CM43xHefmNNr9w+5chEe1xldaBK7Yoe5offcVGP
	teP+AyHIqBLzgJ5oRF8VA6OVWB4I1iEXd7FMxTYCbCBukp5tXpRD9lTB890hz3dqAgrP
	WCxA==
X-Gm-Message-State: ABuFfojtKO8hSmZT3xjPPxxTFU1FWA2UTvnfSoTo+tDyY8aS2IkXhJNC
	z+KAeMUitKwvokE4Vs06QqQXlgRWdn0nHaCpPMmsEo/R
X-Google-Smtp-Source: ACcGV63mn4wydb0XvBY6DvtxmrWLTmoR10As1TpF7/glq6ySEpDq3RMRnXjTwL0o2m2iiSKTk4V2r2qrFMchXbnfOBc=
X-Received: by 2002:aca:31cb:: with SMTP id
	x194-v6mr3316768oix.120.1538673255435; 
	Thu, 04 Oct 2018 10:14:15 -0700 (PDT)
MIME-Version: 1.0
From: Tim Hammer <tdhammer99@gmail.com>
Date: Thu, 4 Oct 2018 13:14:04 -0400
Message-ID: <CALh9vaUAcgWqOytyo9Z=Q++Y8JXBNtx7pA1YRyW=THtF6O2T7w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: DEPENDS=libusb1 | libusb-compat not building package
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
X-List-Received-Date: Thu, 04 Oct 2018 17:14:17 -0000
Content-Type: multipart/alternative; boundary="000000000000d0d39905776a48d0"

--000000000000d0d39905776a48d0
Content-Type: text/plain; charset="UTF-8"

I am trying to write a recipe for cc-tool (
https://sourceforge.net/projects/cctool/) and ran into the following error
during the build:

| checking for libusb-1.0 >= 1.0.0... no
| configure: error: Package requirements (libusb-1.0 >= 1.0.0) were not met:
|
| No package 'libusb-1.0' found


I have added "libusb1" and then tried "libusb-compat" and also "libusb" as
well as "libusb-1.0" to my recipe's DEPENDS but nothing gets fetched/built.

I previously encountered the same failure with Boost and adding it to
DEPENDS was the solution. What am I missing for libusb-1.0?

Do I need to instead modify the configure input to look in a different
location for libusb-1.0?
-- 

.Tim

--000000000000d0d39905776a48d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"auto">I am trying to write a recipe for cc-tool =
(<a href=3D"https://sourceforge.net/projects/cctool/" target=3D"_blank">htt=
ps://sourceforge.net/projects/cctool/</a>) and ran into the following error=
 during the build:</div></div></div></div><blockquote style=3D"margin:0px 0=
px 0px 40px;border:none;padding:0px"><div><div><div><div><div><font face=3D=
"monospace, monospace" size=3D"1">| checking for libusb-1.0 &gt;=3D 1.0.0..=
. no</font></div><div><font face=3D"monospace, monospace" size=3D"1">| conf=
igure: error: Package requirements (libusb-1.0 &gt;=3D 1.0.0) were not met:=
</font></div><div><font face=3D"monospace, monospace" size=3D"1">|=C2=A0</f=
ont></div><div><font face=3D"monospace, monospace" size=3D"1">| No package =
&#39;libusb-1.0&#39; found</font></div></div></div></div></div></blockquote=
></div><div><br></div><div>I have added &quot;libusb1&quot; and then tried =
&quot;libusb-compat&quot; and also &quot;libusb&quot; as well as &quot;libu=
sb-1.0&quot; to my recipe&#39;s DEPENDS but nothing gets fetched/built.</di=
v><div><br></div><div>I previously encountered the same failure with Boost =
and adding it to DEPENDS was the solution. What am I missing for libusb-1.0=
?</div><div><br></div><div>Do I need to instead modify the configure input =
to look in a different location for libusb-1.0?</div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><br><span style=3D"font-family=
:&quot;arial narrow&quot;,sans-serif">.Tim</span><br></div></div></div></di=
v>

--000000000000d0d39905776a48d0--
