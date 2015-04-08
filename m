Return-Path: <tobias.olausson@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 418FDE00997; Tue,  7 Apr 2015 23:54:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C435DE0098A
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 23:54:43 -0700 (PDT)
Received: by lbbqq2 with SMTP id qq2so51102920lbb.3
	for <yocto@yoctoproject.org>; Tue, 07 Apr 2015 23:54:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=X/2Q7g9gPpv7t3EiiS13IpzW5mqJznD2YuGwAdL/IZM=;
	b=hXw5evIW+LpoEnnUOqjNSw0fjJsSLzJ/ICMgPfrXexKy7H1mmfgXMWvvoytLafkkkM
	MvLIREgpSO6g57zwoPRkXayOKlFtSGTWEWZMXxa7Lm5fnF9qaaafv9Dta0enllzrLV+C
	16fmqNL3w5QQCQWgpmlcd57/Ng302j0AbeobbB0jptPvAFV2cNOz3/KVrtk+hKucR0fE
	u8Hh2rSLT+3pZO1PzHh8I9HKDVs20YtXpCcXocCI8Zq595aWaQsj8Eypen8qMJv2AJFu
	F02AGlfSMCA2Vqx/Qh79WvRGphuoc6VISTzcVWAIjAdnq8JwodbY8W5X72PiZZjYg9p0
	Ok2w==
X-Gm-Message-State: ALoCoQnEa8viT7X1QczFd5gNHatRX4+9K1/rRQ4rdxLGqkwMwFTkWdM+SHYJe/5c4dKytKkFpKeL
X-Received: by 10.112.145.230 with SMTP id sx6mr21620485lbb.70.1428476080600; 
	Tue, 07 Apr 2015 23:54:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.142.132 with HTTP; Tue, 7 Apr 2015 23:54:20 -0700 (PDT)
From: Tobias Olausson <tobias.olausson@pelagicore.com>
Date: Wed, 8 Apr 2015 08:54:20 +0200
Message-ID: <CAMg8ce8C3k6L0MOBKtk2i9QGbgmXyza0Kn1sfSZBbfO9kX9EzQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: bblayer priorities ignored for bbappends?
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
X-List-Received-Date: Wed, 08 Apr 2015 06:54:48 -0000
Content-Type: multipart/alternative; boundary=047d7b3a7d925ad0a60513310157

--047d7b3a7d925ad0a60513310157
Content-Type: text/plain; charset=UTF-8

Hi!

I just had a weird experience with yocto and I wanted to know if the
described behaviour is intentional.

I have a layer with priority 7 containing a recipe, foo.bb. In another
layer, with priority 8, there is a foo.bbappend. Finally, I just added
another layer, with priority 9, where foo.bb is redefined as a binary
recipe.

When I added the last layer, I expected that to take precedence over the
other two. However, the bbappend for foo is still applied (which in this
case changed the SRC_URI, making the whole binary recipe moot). Is this
really the way it's supposed to be? I would expect that lower layers cannot
influence layers with higher priority at all, but that does not seem to be
the case.

Cheers,
Tobias Olausson
M.Sc
Software Engineer

PELAGICORE | Experience Change
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46(0)735-873444
E-Mail: tobias.olausson@pelagicore.com
IRC: wto @ FreeNode

--047d7b3a7d925ad0a60513310157
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi! <br><br></div>I just had a weird e=
xperience with yocto and I wanted to know if the described behaviour is int=
entional.<br><br></div>I have a layer with priority 7 containing a recipe, =
<a href=3D"http://foo.bb">foo.bb</a>. In another layer, with priority 8, th=
ere is a foo.bbappend. Finally, I just added another layer, with priority 9=
, where <a href=3D"http://foo.bb">foo.bb</a> is redefined as a binary recip=
e.<br><br></div>When I added the last layer, I expected that to take preced=
ence over the other two. However, the bbappend for foo is still applied (wh=
ich in this case changed the SRC_URI, making the whole binary recipe moot).=
 Is this really the way it&#39;s supposed to be? I would expect that lower =
layers cannot influence layers with higher priority at all, but that does n=
ot seem to be the case.<br><br></div>Cheers,<br><div><div><div><div><div><d=
iv><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div>Tobias Olausson<br></div><div>M.Sc</div><div>Software E=
ngineer</div><div><div><br></div><div>PELAGICORE | Experience Change</div><=
div>Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden<br></div><div>Mobile=
: +46(0)735-873444<br>E-Mail: <a href=3D"mailto:tobias.olausson@pelagicore.=
com" target=3D"_blank">tobias.olausson@pelagicore.com</a> <br></div></div><=
div>IRC: wto @ FreeNode</div></div></div></div></div></div>
</div></div></div></div></div></div></div>

--047d7b3a7d925ad0a60513310157--
