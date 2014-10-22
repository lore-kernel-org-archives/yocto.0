Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0433E00862; Tue, 21 Oct 2014 22:28:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C1F3E007C1;
	Tue, 21 Oct 2014 22:28:25 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id x3so2157092qcv.38
	for <multiple recipients>; Tue, 21 Oct 2014 22:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=s0PfpIzVlcMGhtRc1wm6Bt4bvhCQy+75RkY9QQRXQkA=;
	b=CmjC+96rdMqPkycUqvJ3VvguwZx9Q7mFEScOx+tL/4dYyiIlMPmJSZaMCgSEWWomx1
	7XSij2LB8osAlOpCl4SzF/BunG+oAkLIwWNuOtOTcV86Pvk9Buix1gds5QHIg1eb/Ptk
	gjZe0/nTYOfaV/+HZ9+JpGdN+EFldnYTRQbEApmW4DcW15kgJT5Stf9dtpYGSn04s8eT
	LiNc3lcQ8GyPuIyfHvp3IXzWBBd1pVBJ2rlKmqd8LCv54rE5LUMD/ee7PDn/pA0sd4LR
	zvk4a+0otJepOCzOISCE/cdluG9fZ+/9cLQiAX2/ebnSsntOAaIaD8DUnBjGStKSZBni
	ySSQ==
MIME-Version: 1.0
X-Received: by 10.224.97.72 with SMTP id k8mr53036358qan.25.1413955704389;
	Tue, 21 Oct 2014 22:28:24 -0700 (PDT)
Received: by 10.96.184.227 with HTTP; Tue, 21 Oct 2014 22:28:24 -0700 (PDT)
Date: Wed, 22 Oct 2014 10:58:24 +0530
Message-ID: <CAP3RZojGKU=iq9dMJsa1RUq0neGpDg1Y0t4yG9kTiB8mJzBXKA@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: /etc directory path in yocto
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
X-List-Received-Date: Wed, 22 Oct 2014 05:28:27 -0000
Content-Type: text/plain; charset=UTF-8

Hi All,

I am compiling the custom recipie and i am getting the error in
do_install function.

Below is the do_install function

do_install() {
        oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
                                      INCLUDEDIR=${includedir}
}

Error:
 saving cache in little endian encoding
ldconfig: Can't create temporary cache file /etc/ld.so.cache~: Permission denied

Looking like, it is trying to create that file in host system's /etc
directory. How can I avoid it and do_install function can use /etc
directory of rootfs?

