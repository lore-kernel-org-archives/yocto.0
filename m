Return-Path: <sachindhiman123@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 704EFE0087C; Sat, 21 Feb 2015 06:04:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sachindhiman123[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45415E0078E
	for <yocto@yoctoproject.org>; Sat, 21 Feb 2015 06:04:31 -0800 (PST)
Received: by iecrp18 with SMTP id rp18so14089226iec.9
	for <yocto@yoctoproject.org>; Sat, 21 Feb 2015 06:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=n3AlObd89DVSb7GqoGHUhsH2WR9d7n2E8KqEACBpZc4=;
	b=a9fTwJNxRqBn2YNZpQpv38fwMBqTElL6mrFzkqGf1TguPAJ3Zg9J8KzjupGi14rj7l
	bNzeVgwKai9lULN7zB25bYwK8RQpxEw2B1w2fsxV2ZDDSentCsA1j0FWx6UvAIWZKsUa
	jChyb9qsWqVPkGW7Yef0QQhFK5Kdd1Um4zbrkF2A5E/xDUdggZ13CSd6jHJXn3H26BiO
	gOzMbZn/qkgzBY2GABtRICsq5T4xpyjiSxLGC2CVgHWEdH1j3netSZlRnIHu7l89YQVg
	hEH33S44yDOGh6hm/wCPgcW5WVrScsvn/5x1gGFx6oHws2qIGJbOdgd/+Y04d2SvPzyf
	Upuw==
MIME-Version: 1.0
X-Received: by 10.107.34.210 with SMTP id i201mr3526415ioi.1.1424527471107;
	Sat, 21 Feb 2015 06:04:31 -0800 (PST)
Received: by 10.36.9.201 with HTTP; Sat, 21 Feb 2015 06:04:31 -0800 (PST)
Date: Sat, 21 Feb 2015 19:34:31 +0530
Message-ID: <CAPtbEGtZAUfU2cij7=iGv0-yfjHy05oY9vuFKVB6qcv0uOk1Lg@mail.gmail.com>
From: sachin dhiman <sachindhiman123@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Sat, 21 Feb 2015 16:59:29 -0800
Subject: OSError: [Errno 12] Cannot allocate memory
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
X-List-Received-Date: Sat, 21 Feb 2015 14:04:37 -0000
Content-Type: multipart/alternative; boundary=001a114031a0e398d1050f99a57a

--001a114031a0e398d1050f99a57a
Content-Type: text/plain; charset=UTF-8

i am trying to build image for beaglebone board, every thing goes fine
building fail with following message

NOTE: Error during finalise of
/home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/
core-image-sato-sdk.bb
NOTE: Error during finalise of
/home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/
core-image-sato.bb
ERROR: ExpansionError during parsing
/home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/
core-image-sato-sdk.bb: Failure expanding variable
toolchain_create_sdk_version: ExpansionError: Failure expanding variable
METADATA_REVISION, expression was ${@base_detect_revision(d)} which
triggered exception OSError: [Errno 12] Cannot allocate memory

Summary: There were 6 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


please suggest to fix this issue.



-- 
Best Regards
Sachin Dhiman

--001a114031a0e398d1050f99a57a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i am trying to build image for beaglebone board, every thi=
ng goes fine building fail with following message<div><br></div><div><div>N=
OTE: Error during finalise of /home/sachin/yocto-labs/poky-dora-10.0.1/meta=
/recipes-sato/images/<a href=3D"http://core-image-sato-sdk.bb">core-image-s=
ato-sdk.bb</a></div><div>NOTE: Error during finalise of /home/sachin/yocto-=
labs/poky-dora-10.0.1/meta/recipes-sato/images/<a href=3D"http://core-image=
-sato.bb">core-image-sato.bb</a></div><div>ERROR: ExpansionError during par=
sing /home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/<a h=
ref=3D"http://core-image-sato-sdk.bb">core-image-sato-sdk.bb</a>: Failure e=
xpanding variable toolchain_create_sdk_version: <span style=3D"background-c=
olor:rgb(255,0,0)">ExpansionError: Failure expanding variable METADATA_REVI=
SION, expression was ${@base_detect_revision(d)} which triggered exception =
OSError: [Errno 12] Cannot allocate memory</span></div><div><br></div><div>=
Summary: There were 6 WARNING messages shown.</div><div>Summary: There was =
1 ERROR message shown, returning a non-zero exit code.</div><div><br></div>=
<div><br></div><div>please suggest to fix this issue.</div><div><br></div><=
div><br></div><div><br></div>-- <br><div class=3D"gmail_signature"><div>Bes=
t Regards</div><div>Sachin Dhiman</div></div>
</div></div>

--001a114031a0e398d1050f99a57a--
