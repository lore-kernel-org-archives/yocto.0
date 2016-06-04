Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E0DDE00C5D; Sat,  4 Jun 2016 16:00:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2984E00BE0
	for <yocto@yoctoproject.org>; Sat,  4 Jun 2016 16:00:24 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id i65so10337933ith.1
	for <yocto@yoctoproject.org>; Sat, 04 Jun 2016 16:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=bhv0vB1HrbKv4yRa3gbwHC+Vn+DM9xvWUy4n5KpnDAA=;
	b=CVI8kiQF7lY10O0wFbd49S+4RP3XOp0rWNk15Q6Z9gFVaOSkox0pO1T4BGfhl6aWmq
	94urImGecie6nJxZrYs9upWy+0dnr5WNhcEkBuKUhM/SBApzGrxHDZ828Yj4oHdN/ds9
	ecQH2X1+IzLkyC9hpOXoxs2j2wT/SC2POatfHcrMpjA0H5MyB2BteNSdOvylfrmeQFTw
	AU7C1ZNqDZPY6MUSptDdhyr7+sxzglbZhgGddm/Ymt7pk2vuQOn+AWf5cDi2eY3eQ4Oc
	fRuAxXTSMWwuAV1FDPQbRjSaCn7fPYJG2/dIFq5Uv+AP6LarS92Otqe5FSEremlrQeno
	iSxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=bhv0vB1HrbKv4yRa3gbwHC+Vn+DM9xvWUy4n5KpnDAA=;
	b=c94wrL9OXj7bze2Ug7+ub84fG1Z9P0gcKF+CyJL66BrDM/WXBtM77tm68f6ZaQmmwy
	ZuCJtnep+7uL4SuszWDRiax6tlWCXZZvcHqcC5VlOg/BbqfBCa/27sjlfdMfQ2rm+0oF
	3x4vkH96nxnGeQlkd/5Q5WAFClMetnF2GnfCCrZ1srukxH6ylIZvMLXhE4XSX6RLM1da
	l8F3fYX44bE/cWT5Vb1htSRxEtzE2K+clxGHbHfiUB8zi99kurasilzvlqlhsVAI5lyl
	+y+XpQiybd0DjUT7YDX8yuW2OS4lTkOUSfHWlUU34RAh/6I69rrrGLbW6Cp8qfEifcA3
	DqJQ==
X-Gm-Message-State: ALyK8tKNUY1S+x4aG2l2sET3r2CS8Jzkgu4awkUTjzvkV8raKMYsu1ywBCdpqqzOi0myVw==
X-Received: by 10.36.48.138 with SMTP id q132mr8078415itq.82.1465081223746;
	Sat, 04 Jun 2016 16:00:23 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	u21sm8021383itc.1.2016.06.04.16.00.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 Jun 2016 16:00:22 -0700 (PDT)
Date: Sat, 4 Jun 2016 19:00:19 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160604230019.GA1506@openSUSE-i7.site>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: gcc-6.1 and raspi
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
X-List-Received-Date: Sat, 04 Jun 2016 23:00:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Has anyone tried building a raspi image lately from master?

	ERROR: linux-raspberrypi-1_4.1.21+gitAUTOINC+ff45bc0e89-r0 do_compile: Function failed: do_compile

	| In file included from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/compiler.h:54:0,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/stddef.h:1,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/stddef.h:4,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/posix_types.h:4,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/types.h:13,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/types.h:5,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/mod_devicetable.h:11,
	|                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/scripts/mod/devicetable-offsets.c:2:
	| /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/compiler-gcc.h:121:30: fatal error: linux/compiler-gcc6.h: No such file or directory

