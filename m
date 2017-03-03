Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9ADDE00A16; Fri,  3 Mar 2017 00:08:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50CA5E0094C
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 00:08:54 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id 68so5984272itg.0
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 00:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=juZW13GNKzL/AFaMCwiqrT7mQqT3TQ7bA8q8Xh9dLuU=;
	b=A04s08uhdnbc3nhevnWpBHtKpeeuubC3teRnVMrYhqumi78zXPAtgoQVZg5uqY4Oaa
	WUd9/TV0+rYdZIzxZVAW7Q/OnkA4JJpXOKYmYhn8AdLgfFStMdhWV0KGzqEnNtOgOGSO
	esQVUli3TcR0ij7usPdKoyxq3wt+g0J8YYXNlz+1G6/ZI0oH7VzbQIrC1vSF/BgJMSju
	24448Y04Kqziv0mSTDchU13UDj56hbtOloLmpKPeAwjS4pup4VB41Sgs5+UsatrFLMSV
	y7GCB8da5Al3OAOsizhxVU9WCbSGhppdPbnmztlLnIKJCVJXyVrb9jnrh+NmXdLVyIQ5
	b20A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=juZW13GNKzL/AFaMCwiqrT7mQqT3TQ7bA8q8Xh9dLuU=;
	b=DCqwBWHREUhW9r7nm9nylsaXfymfLlgPr3im/m+g/A6VR9BsKSwh30D92mR6YdUIkt
	zwMup6vzepGbuXBTVjLG3cwP8/q7moflqudg6hC+DQJHpMVXrncHcuUr5kagstsYw2Mt
	07sVQxyE904JqnA+00/YjKe+f9xI7Xzb3ZAw065YDaiUC76QeSeY4sPCixKKW2+dIZyY
	GFB8wpYgQbmTkluhqzl+rm5Lzd6vL1Jcd4olcacbJNGAWNCodZzPd2zCuIr0j6jcYNRK
	uObrnPmsyv+Ae6Hwtd8Zc6PPK5pbLKp+S3L/zN4Aab6ezviyNNkm4vFrCRtqS4NKHVX0
	x2Qg==
X-Gm-Message-State: AMke39nRWxl2Ls3V2bDwEgVzX5uazg+9nXL24GdpyAEQD/W8SWv4raLgtnwFxFSh9qjotCd7tdT0/F1i1xcudQ==
X-Received: by 10.36.83.14 with SMTP id n14mr1773647itb.16.1488528534388; Fri,
	03 Mar 2017 00:08:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.14.6 with HTTP; Fri, 3 Mar 2017 00:08:54 -0800 (PST)
From: Edward Wingate <edwingate8@gmail.com>
Date: Fri, 3 Mar 2017 00:08:54 -0800
Message-ID: <CAGMdoF=m8O_QqmeT5rqKdFOeD_j+Pi+5UAQd+rHHEDRWzWR_fw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Recipes/packages to use for X server and VNC
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
X-List-Received-Date: Fri, 03 Mar 2017 08:08:56 -0000
Content-Type: text/plain; charset=UTF-8

I don't have any video or display hardware on my system, but I want to
install an X server and window manager in order to VNC in.  Is this
possible?  Would using the matchbox-* recipes allow me to do this?
Would I also need any x11 recipes?  Thanks for any suggestions.

