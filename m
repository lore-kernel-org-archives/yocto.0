Return-Path: <pinganddu90@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C12AFE00DE7; Wed,  3 Aug 2016 00:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pinganddu90[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CCADE00DD1
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 00:29:48 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id j12so16283734ywb.1
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2016 00:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=VnkVGp2cjuEoQnD4xc9Xp8TbU2E5FJtXAaxtzngFlGQ=;
	b=CKJZZym6pjK0GIE/JEpq7m5ppEle0kIzoFasgv/Fw3RT7OQKkHLRVFdXAYHDuetkil
	eoemTrTt5A4gGTu7iVzNR1HGQB4OzrcZOfAF3zf5ARo5FTkMIJVS5Krm7QQsFD5WICpY
	wvBwPTxHWXMytMWjoiDGMI9JsN0kcmX9UAwHHblI7pZp4NkV3EzzJ71bwLGSkSVb8tN/
	EQxBEX5DnqGbYnvejLLt4EGaiRcIbXsAybvOBc/cG/2aG28Q76ZJYg4YrX9z4wIkTEYu
	giJ1tOrziajnkvcljE83UXp8kWRk8D1lwtZrO7pdEUcum90ITG2NR25WYTja8Hr6PVA+
	dOtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VnkVGp2cjuEoQnD4xc9Xp8TbU2E5FJtXAaxtzngFlGQ=;
	b=eCC5SV4ux1ZkuGFHZA7bHUWdJw0lrJvUQnJuofatvwkbGIJB9a6U0rr7NCt9Ge/6Bs
	r1Z6uBl7xiPL9+yypPvCRdtcllR7BLTR5S828wPkunqbRmUqUyye1PlIddyotgEGEajS
	TiUMFdex97aGHpRSC7hJqJoXm7Tix3SfI4DwbynjvJRD2AicfX5S330CwAxMsfXHEUBx
	HnmCERST9h2WCx5dveRAwFxUrNjT4mIKcDCspWr+9eZWljCf/Gtk3hcgruAuLfs4xyTj
	iX1EcWpIs6TDIXZ7mqVsq9LHjA878DSvlYIq/TMTvesWLkXeDq4HaAMDhMVJq1vINKwN
	xxlQ==
X-Gm-Message-State: AEkoouuljHX68+c7Npzpbf5FVVvyQjwool1delsE6FloLaOY05/LEaPcMqmkFeo5OuEUYjzIX/vMkIsjOLtZ+g==
X-Received: by 10.129.146.143 with SMTP id j137mr54089045ywg.79.1470209388034; 
	Wed, 03 Aug 2016 00:29:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.16.9 with HTTP; Wed, 3 Aug 2016 00:29:47 -0700 (PDT)
From: Du Dengke <pinganddu90@gmail.com>
Date: Wed, 3 Aug 2016 15:29:47 +0800
Message-ID: <CAKHP1ds_R1qvwdboVcA3tk7q+b7Cm6bH04CK86+4NFRw1veVKQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to install command locale & localedef for my image
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
X-List-Received-Date: Wed, 03 Aug 2016 07:29:51 -0000
Content-Type: multipart/alternative; boundary=94eb2c093e1e51be60053925cc7a

--94eb2c093e1e51be60053925cc7a
Content-Type: text/plain; charset=UTF-8

Hi all

I want to install command locale & localedef for my image, so I tried the
following:

  IMAGE_INSTALL_append = " glibc-locale"

But it didn't work, so how can I install the above command?

//xiaoyang

--94eb2c093e1e51be60053925cc7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all<div><br></div><div>I want to install command locale=
 &amp; localedef for my image, so I tried the following:</div><div><br></di=
v><div>=C2=A0 IMAGE_INSTALL_append =3D &quot; glibc-locale&quot;</div><div>=
<br></div><div>But it didn&#39;t work, so how can I install the above comma=
nd?</div><div><br></div><div>//xiaoyang</div></div>

--94eb2c093e1e51be60053925cc7a--
