Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 042D7E00779; Thu, 19 Mar 2015 09:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cavallini.koan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E9CAE0076B
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 09:46:45 -0700 (PDT)
Received: by wgra20 with SMTP id a20so67571717wgr.3
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 09:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=c5U6LVY0iFV6SA+plq4qJTr84w+70svYlh3JVSRjZtU=;
	b=Nd2OgTSJ4m8V64Hmj3RE+h98fd7mwrnCd9bX9lDT3TWBf8gDhyvaIkR3IDgZCDHYAd
	vJ3iv5EGzTJCYljk8XBfYt77wSNwRI+9hbp9yuB//MJS9UMO7v3M/Vbc2YqSFe3ZdY6y
	idyY6bDKKnD2njnK2bjFS5dBJ41901BSXMVFlLkrWy/jeIzXIyLHJcxwrvjsJRr44Onq
	BE5GTKoe3+FrXlJaiF+6f3NPB9ceTbFkhCZ4CYKt80tiFG4cryxG7cYTdcjd+mZ5IVra
	/EzFDASyykBbM4HR/tDwlouDWQxD7jm/Od/O9F8SKnFkjC8bk+w0Ba77jBRNiAkaHUyB
	4kyQ==
MIME-Version: 1.0
X-Received: by 10.180.87.66 with SMTP id v2mr17235525wiz.51.1426783604896;
	Thu, 19 Mar 2015 09:46:44 -0700 (PDT)
Received: by 10.194.85.227 with HTTP; Thu, 19 Mar 2015 09:46:44 -0700 (PDT)
Date: Thu, 19 Mar 2015 17:46:44 +0100
Message-ID: <CAFQ+DiiAF-r8C2+UpZA5ioR=sRCorZS1SJw1dH=FKkFG28xYcA@mail.gmail.com>
From: Marco Cavallini <cavallini.koan@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-toolchain not always relocatable
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
X-List-Received-Date: Thu, 19 Mar 2015 16:46:53 -0000
Content-Type: text/plain; charset=UTF-8

Hi,
I am facing to a very odd behaviour installing the resulting meta-toolchain.
I launch poky-glibc-i686-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.7.1.sh

If I install in the default directory or in /opt/poky/test it works as
expected, but if I install in /opt/poky/1.7.1-cortexa9hf there is a
problem. Using YP older that dizzy it worked with a charm.

$ ./poky-glibc-i686-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.7.1.sh
Enter target directory for SDK (default: /opt/poky/1.7.1):
/opt/poky/1.7.1-cortexa9hf
You are about to install the SDK to "/opt/poky/1.7.1-cortexa9hf". Proceed[Y/n]?
Extracting SDK...done
Setting it up...done
SDK has been successfully set up and is ready to be used.

Now I can't use it calling the env setup as usual
$ . /opt/poky/1.7.1-cortexa9hf/environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi

the reason is that the resulting path is incorrect

$ env | grep PATH
PATH=/opt/poky/1.7.1-cortexa9hf-cortexa9hf/sysroots/i686-pokysdk-linux/usr/bin:/opt/poky/1.7.1-cortexa9hf-cortexa9hf/sysroots/i686-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi:.....

--
Marco

