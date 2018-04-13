Return-Path: <mail@pramode.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC00AE00BE9; Fri, 13 Apr 2018 11:55:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC77EE005A9
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 11:55:23 -0700 (PDT)
Received: by mail-ot0-f172.google.com with SMTP id i5-v6so1509512oth.1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 11:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pramode-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=cULovJ5CWF4WYqO+foeXDgz+wLqhVOo0ILxQr6XGlo8=;
	b=ZYL8AyrT6vUEHCaZGMyKFi74MgZp/rdZjrGGwHci45gh99lQAGeioT4PmwewF84GEG
	0rOtW2K/f7IB+AJODqjAaUmbTOHCwY46LvdH1outMXjomdEOj2gkxSyMsFm+X5+CeZfl
	sOenRbnYrGQCDp168FdiMgPRaDxuv6CQ7KXQl3hDhtAKouUasn3JXWXKW/2tvggpymGu
	yQWkhIBA8TNNF2uHzVE1htfJKEcrav6lZZ4VZnufzUCEu4ZTZrCe+Hwz8EPH2QiXwtqP
	AuUMkGt55bPC6AxkKpVdj69ZBoNhd/cHJmuKNQOVxf/PDUfuWGQ0RYtF9XypD16oK4wc
	6nVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cULovJ5CWF4WYqO+foeXDgz+wLqhVOo0ILxQr6XGlo8=;
	b=SVmCnwekoqBxulTRvb5eY5E6cFfpGPImOhAj0UYCDuaJOmZchjJ7rXkc35ADfx/qtK
	7tn0XB80DdBwcycQMgURFF+KrsSYnaWAeM30Kh4EeWF5R89jCHLRucqqSCDp7XGlc0bP
	SLj9WPlCNLMkiylHEr/5eVLT6gl+2tTo8LJNyPCMky/iR5McRVpaKbLNjl1EBuD8lXoU
	p6jPEN2+mmpQRabtUiEJaqhYrw/8ilEDqc+dbGgWh6hDcwW/xv48kzoAwJM+gIawh1uF
	p+JjOxoEswIDLx4OIdmqxQXlF4gjoMQ8JRcfwSqLg2i4fHnVDJ5TBRh1k+AKSPj9xPbY
	Zxaw==
X-Gm-Message-State: ALQs6tBXbvbpwJ/DKhKPFjNpzd7P8OhhDBPgq8qxN41v3dv0B+9yHDSl
	bjbw1R09Vg2Mxsv1aCjPewbQkCIYmKmUB+KCd3SpDA==
X-Google-Smtp-Source: AIpwx4+dZOvTmDzWixOy9FsXXUj/w+9XLkbXLbIa90zJYnJyJr3X44PexC3ePsbQE0PurC9Y1a8rTLXBSCfAZc+Trpc=
X-Received: by 2002:a9d:1150:: with SMTP id
	p16-v6mr4214920otp.209.1523645722499; 
	Fri, 13 Apr 2018 11:55:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.25.30 with HTTP; Fri, 13 Apr 2018 11:55:22 -0700 (PDT)
X-Originating-IP: [2405:204:d204:39bb:40fc:c397:cf38:9301]
From: "Pramode C.E" <mail@pramode.net>
Date: Sat, 14 Apr 2018 00:25:22 +0530
Message-ID: <CANyNnouoBdqyaxT4rcad9HnDBfmuQ_Gj5eSrVYwUJFNCoAfgrQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem with Extensible SDK update
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
X-List-Received-Date: Fri, 13 Apr 2018 18:55:24 -0000
Content-Type: multipart/alternative; boundary="0000000000000db4070569bf6a11"

--0000000000000db4070569bf6a11
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to update an installation of the Yocto Extensible SDK by
running:

devtool sdk-update update-url

Now it seems like the devtool program is not doing any error checking other
than
verifying whether "update-url" contains a "://" sequence. Whatever random
URL
I throw at it, it just returns "Note: Already up-to-date". I am a Yocto
newbie, so maybe
I am missing something .... has anybody else observed this behaviour?

regards,
pramode

--0000000000000db4070569bf6a11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I am trying=
 to update an installation of the Yocto Extensible SDK by<br></div>running:=
<br><br></div>devtool sdk-update update-url<br><br></div>Now it seems like =
the devtool program is not doing any error checking other than<br></div>ver=
ifying whether &quot;update-url&quot; contains a &quot;://&quot; sequence. =
Whatever random URL<br></div><div>I throw at it, it just returns &quot;Note=
: Already up-to-date&quot;. I am a Yocto newbie, so maybe<br></div><div>I a=
m missing something .... has anybody else observed this behaviour?<br><br><=
/div><div>regards,<br></div><div>pramode<br><br></div></div>

--0000000000000db4070569bf6a11--
