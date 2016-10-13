Return-Path: <contrib.open.source@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4BB5E00DF0; Wed, 12 Oct 2016 23:36:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (contrib.open.source[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E4D7E00D57
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:36:41 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id r30so75102643ioi.1
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=bCQxkUNYsS8QVyv6+kDpH3KfAIZeSOp2/e/oNLCOOhc=;
	b=GSzsPlNKWqT0XamG7eH+SAhmrI4NpnTVbfwsQtwx3H+oIOY/45XVzGDENyRFq/WrXM
	37TZ2/E+ocS5bAfqIyk2u6sjcMxxe6KB4VlM3eZ34rDX3PyPa3f18HXttNYixJ1me2dp
	u/ddes6Kc7qfih5Z4+0MU0WAWPJwmIETZRLWU9/4IO4jXtUZgKSL+0HWW34mqHi3govM
	1SXEJAfJkVnq3IVLJM07NjYSF+zEes9nUydpUqHIn4XY5z+9b65xFkJZn9WX6syY6YEL
	Q9qnB44m4uitT5rBQcP4ybsPo38PojsTVUoz3F+g9alF6d6O2H0h/89zjdVdf1qJq16w
	AtSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bCQxkUNYsS8QVyv6+kDpH3KfAIZeSOp2/e/oNLCOOhc=;
	b=dwNeLgn6VMm/ceqckaNQtBVGV/0AIuw0XaEVMAsaoDAgPl0qKReH0xNdiu144IJRZS
	7BugWMcWuVVNKUD7OYQOPFpBguXF7YR2G2NyAX678hXSPKUrlMsQjGOcA7TxgJnrWX/P
	cCZwE+l+aHU4SEfa0D6t1hR8bGBuNg9byJDR/o7b/08NJ+CKRYIhMobXhuXCncmbAhHX
	OcVv8xQcq+UegPOp0JZrb6yaQL/q0Jeo2hmh04Ogemc+oZz8YAZwlKsjcfP8ABFhI88Y
	CKE80R+fAzG68jEfuJHutyGk1xMgPNLDu/rudFt9j4oQr/lzNMle4P2h7xOEo9IV9YDq
	XF4A==
X-Gm-Message-State: AA6/9RkVeDCMnpezowE/2pboCVhoVtBW1r+VIYSW/aqVg/YzR1BimbExNw5UjKay+uBTSHNkA3BGNGQ4Ni1yiQ==
X-Received: by 10.107.20.138 with SMTP id 132mr5043153iou.47.1476340600771;
	Wed, 12 Oct 2016 23:36:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.126.232 with HTTP; Wed, 12 Oct 2016 23:36:40 -0700 (PDT)
From: Contrib Open Source <contrib.open.source@gmail.com>
Date: Thu, 13 Oct 2016 08:36:40 +0200
Message-ID: <CAEV+hqxpQYwFo5r=OuTBkjS6nis5n48WrGipFJbY9XJLUtVD1Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 14 Oct 2016 08:48:34 -0700
Subject: Yocto recipe license
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
X-List-Received-Date: Thu, 13 Oct 2016 06:36:42 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

it seems that license.manifest file describes application/lib/etc.
source code license,
but what about Yocto recipe license itself ?
So what is the license of a Yocto recipe ?
How to know it ?
If a Yocto recipe is GPL2, and we extend (*.bbappend) this recipe,
does contamination effect applies to the extented recipe ?

Thanks for your help,
contrib

