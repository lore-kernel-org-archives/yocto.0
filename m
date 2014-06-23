Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5213BE00283; Mon, 23 Jun 2014 16:57:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E60BBE0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 16:57:26 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hy10so6894453vcb.29
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 16:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=/jQzJ8A63ilfo0npywqU/Dhp4PvmnwBx/uwK9PSKIww=;
	b=NRsrrBTJDXzneAZNdjJ81qIxwnHr2G7ziWEyteESSOA4HHLSmH5Iz3+jz7lUbml6J6
	dK7gn+wReTEx/t/BcaAJNkMo9urvQ5l3UhX33zXZD2MswTTxA7ulJ6N6QbBEG2dtsSBO
	XMCRXRgjYoowf97PRTISkQa0Ig5KP+xgJ8u225xl0jgF38RInkZ/jeN2MArc7BnPQFLa
	P3hth173CC0nAwEw9aujoZVEjBjd7MXEBPSp8AWZ3Z9CcB++70J/qDls2+9+Fmu3yAQi
	rTSOtBmPNDbviTmEYmGYZwtn4X2ngWX8VKoqhNcbkf0BJ4LlqbwugddaAVT4+eze7hzo
	s+YQ==
X-Gm-Message-State: ALoCoQntuH8xpmf+fys9FOPTANvB3uAsykdw13qO3Bj4F8nDpYVJndahIM5thXwOjXz1shPrKE1i
MIME-Version: 1.0
X-Received: by 10.58.1.9 with SMTP id 9mr22413177vei.14.1403567845321; Mon, 23
	Jun 2014 16:57:25 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Mon, 23 Jun 2014 16:57:25 -0700 (PDT)
Date: Mon, 23 Jun 2014 16:57:25 -0700
Message-ID: <CAPhnLPDXsM_to9YEo2xEirK1s9L7sLPXHN8G2JPKp5w4q68fkA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Yocto Project 1.6.1 rc3 available for test
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
X-List-Received-Date: Mon, 23 Jun 2014 23:57:33 -0000
Content-Type: text/plain; charset=UTF-8

Please begin testing:

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6.1

bitbake    2ae1fa629acf1a37f2c8ad929285cc7c76a9a40b
eclipse-poky-juno    26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler    1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm    f5bf277a5a5fba2c3b64ed7d2dbec1903d96386b
meta-fsl-ppc    299f84cceccacd84651c1cefc1c34e66fb598a96
meta-intel    50d1afd52a612dbf9a190bf869c37253864886cc
meta-minnow    7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3    3016129d90b7ac8517a5227d819f10ad417b5b45
oecore    09f7ef16bbfbdfee25f0be3fd829924a6042fae9
poky    c4f1f0f491f988901bfd6965f7d10f60cb94a76f


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

