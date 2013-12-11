Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3166E007D9
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 11:11:27 -0800 (PST)
Received: by mail-ve0-f182.google.com with SMTP id jy13so6257706veb.41
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 11:11:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=hcHtQEkjp1PiNVtp67oPgVf6zboIw/H51p3LR5Vz76E=;
	b=kk5lhNujb5cV8jEq7eVP79zk254lBqJUCuY7AuWOSmyTvs8XwOLngyMt/JTT908O6p
	oUnsaPbESXykQLAAoi8wZ92ZPbIbn0loqdTUqDc4Wkzcdtl1kFUMqNXZzJTU6MeZ06Qy
	4+A9VssXTmaCNTEpG5Ho+ow48sGKR/E5aNHe9oHv1Btp15SGVb+Ps+m52k7iPfeRE4UP
	aqBw6hQYMuYm7iBM4drjsIpcaCPPHwRf1gHyTUhbrSqVovIC6Ji22xtavKoJE9StxLkB
	HUWK1Bs1ZXtAV6e/xP7cPtdIgOLcRv3+1tEIQUTt+eH/S4DT0X+PpFO7uVSjjt+lweJR
	pgqw==
X-Gm-Message-State: ALoCoQl7luBQRSvkVUqDx9jTMLYx5SpvWihFRk/tEoWqspxQEymV8lV+zAibqZ2HmTrrPV2gWuvw
MIME-Version: 1.0
X-Received: by 10.52.164.203 with SMTP id ys11mr1021221vdb.37.1386789086981;
	Wed, 11 Dec 2013 11:11:26 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 11 Dec 2013 11:11:26 -0800 (PST)
Date: Wed, 11 Dec 2013 19:11:26 +0000
Message-ID: <CAPhnLPA1ce6ghLLjZxZZ6jo4votE=K=AwyxvWmToiOaFyWQuGA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build availability
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
X-List-Received-Date: Wed, 11 Dec 2013 19:11:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20131211-3

bitbake     5223ffb5b6a46d8b3f6ac3362bd2672e2edf2691
eclipse-poky-juno     e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9
eclipse-poky-kepler     3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82
meta-fsl-arm     c9284f1668f33d5c6a9b2bcc7fc869642a0e4b92
meta-fsl-ppc     2335375752024972b11efe32d94f6413caaa6bfa
meta-intel     a649e92498d234f2d0d52f3da5a85bdc87296c23
meta-minnow     2be99cb63753a19648f37c3785f51cef0857dcb7
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     8505f0fa48cc79d51616b923c6e2c778c4b46a44
poky     bfec6b1947b472d6f1c9c7f297e66ede5e921069

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

