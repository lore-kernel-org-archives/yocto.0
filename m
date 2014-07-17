Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5757E00781; Wed, 16 Jul 2014 22:52:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1008E006B9
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 22:52:27 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hy4so3628128vcb.36
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 22:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=RB9p23Hntf24ZG3OlpJY5S3y4d96MdMlxYcVQ1JLJsY=;
	b=CA4XzKgeGcxFVLvPO+3tbT5N1YUWr7n7JD9RPIhVvWlTqFzyd+3dbO24VppGlxGeOQ
	5blq9NRFgkzUsudT/XnYFygLD93rQWt4ORi4NBDAiDEP1TdBAA6YrpzqSm201Cztdxw3
	OaFQppdrCZvJLdTZuUixn3UFIa+f9yVPPn5PtDQzhSiA0vNYmE01LuCqt7gC2v2vZiLL
	HIm7+vMrjj7+H4gEtgXiIwDUcA7VsM0lQF3fMRfUGJkcmhUPbMBbHMmVtwjvOCC8XyHF
	P26aFSIQ2aHXLyuKgKl19YZRiFExS12nYDb17BPIQx6/gYFeP/iSfWCKHFv9kcLrI+SK
	6Udg==
X-Gm-Message-State: ALoCoQlmDzy0O8vG0l9mBy6mIiw3wlHXpCRfVfBkcTChYIauz3FKCl+dwSOhXo103JFztZSjmJMd
MIME-Version: 1.0
X-Received: by 10.220.202.69 with SMTP id fd5mr14463609vcb.43.1405576346127;
	Wed, 16 Jul 2014 22:52:26 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Wed, 16 Jul 2014 22:52:26 -0700 (PDT)
Date: Thu, 17 Jul 2014 06:52:26 +0100
Message-ID: <CAPhnLPD3BEpJxqpf--v0WGAeNmYz-kgq6QseuoBiURzk_5LTWg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: Weekly build available.
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
X-List-Received-Date: Thu, 17 Jul 2014 05:52:28 -0000
Content-Type: text/plain; charset=UTF-8

The weekly build is now available at:
http://autobuilder.yoctoproject.org/pub/nightly/20140715-1

bitbake af1d3373706d365f9138caec110fcb20a5966b7b
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm b1aa1d23c6be6588c50cb1ab8911d7b551b35163
meta-fsl-ppc 0772054526043a29b73345540174f2c344f9a353
meta-intel 05dd98cf5c117a8bdd566d36d20a84fff20e8cc3
meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore fa325e44f5b429b4038022b31285af9c94672943
poky 1dcdd877c7946be4c0b1203deb14e2f842f9d0c2


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

