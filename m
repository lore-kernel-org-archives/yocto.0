Return-Path: <ctronchoni@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AC76E00C0B; Tue, 26 Jan 2016 17:07:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ctronchoni[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0030]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F315CE00C05
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 17:07:11 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id r129so126766620wmr.0
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 17:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=Ko86eTdCj+WOMCk+aT68Z60oID1cds9EVSHAPUf+zUM=;
	b=FJG9si3tQ5LcacE5o6LSbd+DVb7c4RxPcRJhmRxbRcNpVcivlwwdpLzC0ZlOJlDKal
	33rs2h8taskdtpeGzitre4ZxZU3bn/Yju6DtX9b9bzIaEF0aaHc48dX5rAkoBmyqUdRc
	jRsWz88Xy5YfZy8GUPoQWPQPYCvkXYigzKqwjcfRgxxa0f/NMPHVkloM0ZsTpHCGectq
	HC1zIwreJ9U0OvDfRDPSnqgfkMI/wow1rKjroKPFEgmd+5e+PcT5U7jtfeEE7K601cQO
	bPfMDMv5F6Gz2VuXpa2+AhDUKplPCjuiTjPXIWD3H8wqzh2xXogiBJz4V9mKyK/z7eOB
	Y57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:content-transfer-encoding:from
	:mime-version:date:subject:message-id:to;
	bh=Ko86eTdCj+WOMCk+aT68Z60oID1cds9EVSHAPUf+zUM=;
	b=ZHwPSAUSoZp+OG2mipptq+siuHzrO9vmt6b2/jtL7hmYY24tsxlnn06h6ZLZ4rC638
	oGob/3z1R9zwg48qji00OR2WhLRl1wHXx1PNSrKmIGXIVtx+kSjHw7kyNfwWxpsetgeA
	v8IDmYj8FXpyZ/09RSTrqVCXwr4h+LcVA0HBx8JRmrHdQS/WAyFY7tRabBKs21ZxFe59
	kx1Pd6J3yB68GujBIaos758miGeD1olOdH3APP3qeqO3F1raGOCRKvAI+XQiBzrT73hP
	6o6K2/Yn+QuaQSvlzORBEL/GpvO7Omt1Rl9o82mSkmXeOxXD6WAaY93brOeT+5WnxCgN
	825A==
X-Gm-Message-State: AG10YOQgA5AZtVo3+Db5h7g1TbIFILIoZqYnx9UUnWtxiZQp2sefTWPpAotCW8bTt0+GnA==
X-Received: by 10.194.113.102 with SMTP id ix6mr29537597wjb.143.1453856830483; 
	Tue, 26 Jan 2016 17:07:10 -0800 (PST)
Received: from [192.168.0.27] ([90.71.51.20]) by smtp.gmail.com with ESMTPSA id
	x189sm15073857wmg.1.2016.01.26.17.07.09 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 26 Jan 2016 17:07:09 -0800 (PST)
From: Carles Tronchoni <ctronchoni@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 27 Jan 2016 00:17:37 +0100
Message-Id: <2339FE49-87AC-47BF-847A-ADC5C20F403D@gmail.com>
To: yocto@yoctoproject.org
X-Mailer: iPhone Mail (13D15)
X-Mailman-Approved-At: Wed, 27 Jan 2016 09:46:02 -0800
Subject: Re: Package woes
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
X-List-Received-Date: Wed, 27 Jan 2016 01:07:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit



Enviado desde mi iPhone

