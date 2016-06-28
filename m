Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A04BBE00C1E; Tue, 28 Jun 2016 03:27:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6397EE00B5F
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 03:27:36 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id a5so88111333ita.1
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 03:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9T+aqXHZq76xupTK9aMXZljHayHvipawQsr9hULK/qI=;
	b=uOHH0czJoLUXAZ8wLFNBlgeQp48gXnM0jtKcCGJAlchT8+sY8pfKXab1x0tW2J54cw
	SlYSIt4S1KbwqAYCt3D1rwnJSVgqyD+Hz6P3PSj+Q3S27+7MlTMe1HCZwK2+xu0PWAu/
	Kw4M3rjaUGQcbkyI02Ngi7EHa+rkE4wBP4taKwOg+TD/Mf5GZFXv0yDGKLv/XHpBDUad
	5ElxyPmJhD8xtpSJQkhBw8zHHzglKULM8E2/2bkyRyoEyrJdlzssu3omX8EUIOG8pxex
	TZOPgiO2jaU9UbFWOkC9iMBOyYiXwnkG1r2xjOPkGrk0OYL5JN+V5sqx+o9NT7JT8Ebc
	ajZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9T+aqXHZq76xupTK9aMXZljHayHvipawQsr9hULK/qI=;
	b=mvYDIChLbMR07QheFE7DEMHhYjRlFaNneXfOAOUAaV144dh79Msh0MKDkbP1PxIULD
	WEf4UWtSKxzfjXyyKCqAD0am+LsGlAe7OIBujrLjRIm/WgIsJKaX2G0XEQEot66FBl8j
	Uz0FBOWbYHaeRpcCuvPW0zaR4jrV2VVbtKIf4IZSzE3pQUpJJFl1Kk8o9azTF+N7d+8i
	4NuKp+1dJX1Ykam6OzRyeY8uCCd8XfxID48XV06KFlIKp7kpGpwe9WcurQ3sSoC6PmFR
	DNUx1lM1swkmqROXUONKPQIBoe7tnrWCFkdL14/8iIB5dTB8xQI9Qjfr67Xas5D7uJfj
	S2DQ==
X-Gm-Message-State: ALyK8tIA/m4pGFD5WsO39UBLfO85ZNfAcqzv3XjIgjzQIkX9E7nAN3cS1hiwBUtpOZX8RYpNpcjq2y+mlqyNAPz3
X-Received: by 10.36.217.68 with SMTP id p65mr2885614itg.38.1467109656308;
	Tue, 28 Jun 2016 03:27:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Tue, 28 Jun 2016 03:27:16 -0700 (PDT)
In-Reply-To: <DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Jun 2016 11:27:16 +0100
Message-ID: <CAJTo0LaLSseY14pcCm_V+mx4rmh=cSRvQkwkWp40LeSgbWuTqg@mail.gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Tue, 28 Jun 2016 10:27:38 -0000
Content-Type: multipart/alternative; boundary=001a114631b6e947d105365415e8

--001a114631b6e947d105365415e8
Content-Type: text/plain; charset=UTF-8

On 28 June 2016 at 06:56, Zhenhua Luo <zhenhua.luo@nxp.com> wrote:

> [Luo Zhenhua-B19537] gcc can't be found after sourcing the SDK env script.
> but the /usr/bin is in the PATH env variable.
>

You *do* have a gcc in /usr/bin, right?

Ross

--001a114631b6e947d105365415e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 June 2016 at 06:56, Zhenhua Luo <span dir=3D"ltr">&lt;<a href=3D"mail=
to:zhenhua.luo@nxp.com" target=3D"_blank">zhenhua.luo@nxp.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":8zd" class=3D"a3s aX=
jCH m1559596709da7d67">[Luo Zhenhua-B19537] gcc can&#39;t be found after so=
urcing the SDK env script. but the /usr/bin is in the PATH env variable.<br=
></div></blockquote></div><br>You *do* have a gcc in /usr/bin, right?</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a114631b6e947d105365415e8--
