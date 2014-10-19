Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B15D4E0078E; Sun, 19 Oct 2014 11:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86828E008C3
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 11:37:29 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id y10so3542811pdj.41
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 11:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=ImfjFpSkYomLfuY1gpbZQc4k8IvtUg+TFDeyVkteO78=;
	b=nKfs2nrUKKqSBWKMotpJkJ5YcRRfcQjXVkr/qWu3RLHq/lY86DirYLnpnXCxvDh3Z3
	cnIHVcfPyZ4gCSZCg86uWdEQb8YZUGOHN0n9x+rZ8612KF7gqjuc9iAADSMz2jKIdZ5G
	f2/2CwCJ5jBW8DTRUXOrMaBmmr3G+4kmo4ivzyCEIAllVS/Wf8NcakPwKjl+Tu99Rs1e
	BIWVegVZ6NRyKt87smHwVm39ir8z5RO828uoNae1CBDyFdIWKOuYMGD83dUdIrNTvg6f
	l0a2akPflm3KCqnNwgq8cbyOkHP2og4CvxPkHALA6nief3Ah3v7XyjJw4N6D3OQLfkDG
	BdJg==
X-Received: by 10.70.128.239 with SMTP id nr15mr22533941pdb.32.1413743849636; 
	Sun, 19 Oct 2014 11:37:29 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:1cc9:bc0f:a205:6dee?
	([2601:c:9380:601:1cc9:bc0f:a205:6dee])
	by mx.google.com with ESMTPSA id m2sm7148898pdf.48.2014.10.19.11.37.27
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Oct 2014 11:37:28 -0700 (PDT)
Message-ID: <544404D7.9030905@gmail.com>
Date: Sun, 19 Oct 2014 11:37:11 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: OE-core <openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Poky X11
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
X-List-Received-Date: Sun, 19 Oct 2014 18:37:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



Hello,

When I build 'core-image-x11' on Poky, X on wont start. I am using the 
standard Poky clone with no added layers. When I manually start x I get 
the following error:

startx
/etc/X11/xinit/xinitrc: line 95: twm : command not found
/etc/X11/xinit/xinitrc: line 96: xclock : command not found
/etc/X11/xinit/xinitrc: line 97: xterm : command not found
/etc/X11/xinit/xinitrc: line 98: xterm : command not found
/etc/X11/xinit/xinitrc: line 99: exec : command not found

I suspect I am doing something wrong.

I found that the missing files are in 
meta-openembedded/meta-oe/recipes-graphics/*.

If this is a bug, which direction should I go to address the problem?

1) move missing recipes to oe-core
2) remove core-image-x11 from oe-core
3) remove files from xinitrc
4) none of the above, issue some where else.

regards,
Armin

