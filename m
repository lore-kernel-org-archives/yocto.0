Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E24A9E00DB3; Thu,  5 May 2016 10:57:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D844E008EA
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 10:57:41 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id g133so133915424ywb.2
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 10:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=jTfouUSWrYaO+cD6Ktqmes5Hy0OKEhIaFrcx9OwghhM=;
	b=037tXfh0Dpc2O88MReratZp4UGpqlbi9j6wPTH70ieoJx6CPoCVarFgM7g7WtFwE7x
	1YhvjIL39LtW2E9neuPZvoPdYPNHsxtZ3lMjDKVjLhVLPnJjLYIARrsOmrRMr7cEciFf
	G7CRI2bBOHBQEIf+8mC/USFe3agwlAOr6NCgpfF8YpGjoOTvwylNFG92fU8rvlaYmPlw
	qmJcgCmphEIkkx0u4JluMXESKOqHUtY31b1Guzob1XZg16eGMVOUiPxBSeim/tXvkjkB
	YpTtma6OBieqiM0WvwuzIXolr9+sLaT7XH1njI1IwtoDd3lPrXZtIpPcchuSwuEVpiaq
	ub3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jTfouUSWrYaO+cD6Ktqmes5Hy0OKEhIaFrcx9OwghhM=;
	b=lSiKmvouKfDU6SZj1xuTKi/1e9OSXOq9U1+F8xPIqf1GC2FH6rHHWfpljqrP0d2qHj
	lL/d2jBRPqMMtr7xo1GskgccezPwQLI1xVK7rz/wyX5Pvx6qYM9FqfOsy6IOnH1mj0DT
	7a/hN2L6uSeYovd6sax/KdWPgJdmOYwa9DKc0Sb9NEm6qODYbMWU+ril6/JxElOCgcyl
	M88swEvAn8WOLwfXAHpEJHeuYSIA/fYNLZf3ioa7/ureFEcNJk6LrqZkwm0N14Efx1fv
	axDn78wdzTaH0OSRRZiyfDNKDtHudnCGGUGX+2TDKAs6sDEynrFSaLfE0MnN+TqWPFtj
	n0Zg==
X-Gm-Message-State: AOPr4FVL8Nst8d/25oWevJAVxyDCdVp2BgBaLCvgsv2gnUhpZTvITUoxpDLYK0uHTQ8zG+7d+2rfBTURNygvgg==
X-Received: by 10.159.41.167 with SMTP id s36mr7047874uas.48.1462471060718;
	Thu, 05 May 2016 10:57:40 -0700 (PDT)
MIME-Version: 1.0
From: Paul Knopf <pknopf@medxchange.com>
Date: Thu, 05 May 2016 17:57:31 +0000
Message-ID: <CABfz71eh5ONgNF2aDmZfrJ8sexms3nEv=iNWgA9ChRGfHxKS0A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: udev automount.rules not running on boot
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
X-List-Received-Date: Thu, 05 May 2016 17:57:45 -0000
Content-Type: multipart/alternative; boundary=001a114cbbf4119a3605321c1405

--001a114cbbf4119a3605321c1405
Content-Type: text/plain; charset=UTF-8

I am using the automount.rules in udev-extra-conf.

If I boot up with a block device plugged in, nothing is mounted. If I plug
in the device AFTER the machine is booted, it shows up (in /run/media/*).

How do I get these rules to be applied on boot?
-- 

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--001a114cbbf4119a3605321c1405
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am using the automount.rules in udev-extra-conf.<div><br=
></div><div>If I boot up with a block device plugged in, nothing is mounted=
. If I plug in the device AFTER the machine is booted, it shows up (in /run=
/media/*).</div><div><br></div><div>How do I get these rules to be applied =
on boot?</div></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><p dir=
=3D"ltr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a></p>
</div>

--001a114cbbf4119a3605321c1405--
