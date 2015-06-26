Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F798E0096A; Fri, 26 Jun 2015 12:45:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vn0-f53.google.com (mail-vn0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E24B8E006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 12:45:26 -0700 (PDT)
Received: by vnbf190 with SMTP id f190so17058207vnb.0
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 12:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EkybnOttKvs26t6/67km7Jxl4Z9/vRzzxix6VPzjkeQ=;
	b=MHIgV4NdIdK/LiUlT1/BWpx/iu+lpxCBnxTgbeDYhxKBWKZ4pFW7IhSectn5ilEgJ4
	xRIYb6PuVXdO4mW7HVgLMn3IIqkT5KSA+iU62WAumEzcfdq1IrLkwbFcaqZimg0bAmCV
	a9AMpaNsxZgLMdFDV2ryJQdp7sQsqaoOQlxdDAarMkhjsFxt9vl3lRdTnysCNejyObja
	OPDrLw7wtIZK9skqZnZX6TVFTr/hXmcSglaCw8vHr/5UBG9BPUpgiZyEhNdNlimt2I2k
	7Ur4Zp01kk1WiXHmVkJKIEVmbhRrqXCzOa0NvnrtFPbcqKgFuyLoCQa1AN92YGunSmnc
	nCRQ==
MIME-Version: 1.0
X-Received: by 10.52.30.201 with SMTP id u9mr2835998vdh.95.1435347925783; Fri,
	26 Jun 2015 12:45:25 -0700 (PDT)
Received: by 10.52.176.105 with HTTP; Fri, 26 Jun 2015 12:45:25 -0700 (PDT)
Date: Fri, 26 Jun 2015 16:45:25 -0300
Message-ID: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Avoid creation of .sdcard images.
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
X-List-Received-Date: Fri, 26 Jun 2015 19:45:28 -0000
Content-Type: multipart/alternative; boundary=bcaec51ba3ab3edb51051970fbeb

--bcaec51ba3ab3edb51051970fbeb
Content-Type: text/plain; charset=UTF-8

Does any one knows how to avoid the creation of .sdcard images? This ones
takes a lot of diskspace and I have to delete it periodically, which gives
headaches about cleaning everything every time. A have an 50GB partition
and from month to month I get out of disk space. :(

Thanks in advance

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--bcaec51ba3ab3edb51051970fbeb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Does any one knows how to avoid the creation of .sdca=
rd images? This ones takes a lot of diskspace and I have to delete it perio=
dically, which gives headaches about cleaning everything every time. A have=
 an 50GB partition and from month to month I get out of disk space. :(<br><=
br></div>Thanks in advance<br clear=3D"all"><div><div><div><br>-- <br><div =
class=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do=
 not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><=
br></div></div>
</div></div></div></div>

--bcaec51ba3ab3edb51051970fbeb--
