Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5545EE00895; Tue,  2 Dec 2014 07:54:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C251E0080C
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 07:54:18 -0800 (PST)
Received: by mail-pd0-f173.google.com with SMTP id ft15so13351338pdb.18
	for <yocto@yoctoproject.org>; Tue, 02 Dec 2014 07:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=xV1VOHod/NOkMV+Ai1lFOdsd3d0SO6jgWj9LtNUvq00=;
	b=gvdpPRrG+vAm92LGVe9eIibPTdm9HBR8Az2693MfRwqJAgAU1CNZlFq3mtDeRmM6iD
	8OpWFl0CNmBil7iZ1XX2DGGXpFOpF1kHb6JD5xtMOE0n1ZnII0IE8JJWuR8StWYScpgM
	Rc/Qxf/AiHmKK2PGJLMWUorSPaJYNaywSr3XPFczS9yN3Rmg++8ELQyUm7sTLqaeqweN
	YvKT+4Noj8z/Q9Fbe9Mjg0V28AQENNNG7sJ19bCw3ECf/aZuZJ7RFEboUaza4ev+35A1
	YmiL7x0P2TSgNCjnT9jguI1y5ktNwhQWS30ctS2HF2CVIfxmSrtacwm4IGt5hr7aUtL9
	oTKw==
X-Received: by 10.70.88.231 with SMTP id bj7mr7139382pdb.168.1417535658310;
	Tue, 02 Dec 2014 07:54:18 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:7817:c089:b413:c9c4?
	([2601:c:9380:601:7817:c089:b413:c9c4])
	by mx.google.com with ESMTPSA id zf5sm5729285pbb.31.2014.12.02.07.54.16
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Dec 2014 07:54:16 -0800 (PST)
Message-ID: <547DE09E.3090203@gmail.com>
Date: Tue, 02 Dec 2014 07:54:06 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Bian Naimeng <biannm@cn.fujitsu.com>, yocto@yoctoproject.org
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
In-Reply-To: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
Subject: Re: [PATCH 0/2] Add some recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 15:54:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Bian,

Is device-mapper-multipath the same as 
meta-openembeded/meta-oe/recipes-support/multipath-tools/multipath-tools_git.bb 
?

- Armin


On 12/02/2014 12:03 AM, Bian Naimeng wrote:
> Bian Naimeng (2):
>    [meta-cgl] device-mapper-multipath: add recipe
>    [meta-cgl]drbd: add recipe
>
>   .../device-mapper-multipath/multipathd.init.patch  | 12 +++++
>   .../device-mapper-multipath_0.5.0.bb               | 53 ++++++++++++++++++++
>   meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
>   meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb     | 57 ++++++++++++++++++++++
>   4 files changed, 134 insertions(+)
>   create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath/multipathd.init.patch
>   create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb
>   create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
>   create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
>

