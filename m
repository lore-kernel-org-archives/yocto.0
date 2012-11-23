Return-Path: <aalonso00@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A9DFE013EF
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 18:37:03 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id 13so7373030iea.35
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 18:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6oZfFFVBN7qyOQtqUHPldkkKwQ4SzFoQ7Ij7Zb6e7mY=;
	b=V808wh4AQm4UyRSDk3wYugp1gT+kqSu0ZNu8yvT2awGAtHo0Ng8bp3nuSBHWj2i0ns
	kn/bXBkDl2G+kxTLKjhtzvJowMol7fFaWnPG/B9jnKkmLF6wuBBLhQBJDP/bGS3JsZXa
	N/1A0BXfe/SeZlZNCm3HmyO4Zj1ryvtm6UerPF+QDEhBIP0Qn38C5unaFDkDm7w65Qwr
	PizBfS/uHGVD7b1ptiuRfbZyzsD+BKcQOE6ke7zojySfrGyTuZZkpwH3rENXY2muyo3P
	I6gJggQxZHISKt15qsuYl8+P0J8N6dYBArtiPfy4zCWDkNl7ElxwN11pbCJUbpj8CVKK
	yl4Q==
MIME-Version: 1.0
Received: by 10.50.179.5 with SMTP id dc5mr2326998igc.15.1353638222494; Thu,
	22 Nov 2012 18:37:02 -0800 (PST)
Received: by 10.64.166.66 with HTTP; Thu, 22 Nov 2012 18:37:02 -0800 (PST)
Date: Thu, 22 Nov 2012 20:37:02 -0600
Message-ID: <CAAB-1yygWq_2+V8EZqp=UN=HRdWOdBsTjXqqW7Uu+p11teK-dA@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: yocto <yocto@yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>,
	Elvis Dowson <elvis.dowson@gmail.com>
Subject: [meta-xilinx] Update maintainers contact informaton
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 23 Nov 2012 02:37:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

Please welcome Elvis Dowson as new maintainer for meta-xilinx bsp layer.

Elvis had provide fixes over the last months for this layer and I'm pretty
sure that he can improve and move forward this layer.

This BSP layer allows to create a custom Linux distro that can be
deployed in Xilinx FPGA's which can either have a soft-cpu model or a
traditional CPU like PowerPC or ARM Cortex A9.

@Richard, Jeffrey please help Elvis to get write access in this repo.

-- 
Regards
Adrian Alonso
http://aalonso.wordpress.com

