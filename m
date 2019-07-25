Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9B7AE00DD9; Wed, 24 Jul 2019 18:09:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D41E00961
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 18:09:45 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id g20so93625155ioc.12
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 18:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=d0Ppj7o3cxLwjcjUwzsSwjWPueXYUskLNnEC5gy/bFc=;
	b=rvcVNPIdxa795uvPTi2VcLfL2XLy6iZCzItJj8cEAnh8Q8/1MUNy7DdnwDIptIV5uy
	o018py0ZstxuInZqHkcb/b/sWdmsfQaCKrKahW4Xc1rj49v50Lb+EEFC6xibmdLQPF10
	pTPABs2+PmWd4C5WDy6k3yx7X9fCS0f62Db5mrjjML6Nuk/R2FZ5OHmqpKkJlIHvNuev
	ubxbgLT+3w68mVGwp0R1FzbSoAygNHRgXiGB3w5DPKmAddH1THhhmYeF9zTBzZsr23dr
	Gsg6NiLx7Q6iMgx3x3sOKpwtpj6p21JZGgP1wvRZ1REIqaR89Ria99R1oJZTOCdTk4Qf
	OOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=d0Ppj7o3cxLwjcjUwzsSwjWPueXYUskLNnEC5gy/bFc=;
	b=BBtr0IVHGIuxSRXFoiXNqz19PaLsnwLEdhX1ybFIbEFVxvyTKMupM7Rq8WPhzey7rt
	lpaHcMDUwBqQa43dJ3rZHk80DJ1pANQJlP34v0gEWn5OBarGmu1IEdqQHyR1vOjpLJ5N
	IWiDuLbw6rF/qDgBv4OnmWDuXaEF2hDo4QSrw75H+vktGtr+3PxWsDOqqmskXCiwluUx
	9gJONLQISQr62xLbdGw5R8Fgt4J+XnxbFDiKNkx94sHzHyliOKs/Q+s3XiJ4vwFZX0Js
	9ffIQeaVyTgk8RiTR4tPqazPl0J6JmFW0ageC5ZKXDS5GvjJn80BncQqf5e4hBgrmxbg
	ijkw==
X-Gm-Message-State: APjAAAXsH6YgAZ5jsMM/InbCSZkQQOBXCj/s3KLnBTYqtFMJLPvRgE08
	ONrDSwkJFYD/1s7jzgOhSF/tmp01ReTSGLdKsN9vE6cA
X-Google-Smtp-Source: APXvYqwZuD7dDBWsNaFf9OGV+jeJW0dtuLX+Otjf0MQWMt6Y1JWx50ul4nsE5Z6pxRg9+FjhzabPg/xOjSO7LGLTh/4=
X-Received: by 2002:a02:230a:: with SMTP id u10mr5979267jau.117.1564016984986; 
	Wed, 24 Jul 2019 18:09:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Wed, 24 Jul 2019 18:09:44
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 25 Jul 2019 11:09:44 +1000
Message-ID: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to fix SSH interfactive promotion for Yocto Linux embedded system
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
X-List-Received-Date: Thu, 25 Jul 2019 01:09:48 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am running busybox in imx6 using ssh and scp in shell scripts, but I
troubled to run the scripts to run ssh and scp, it did not have ssh
options stopped at following:

scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
UserKnownHostsFile=/dev/null ...

ECDSA key fingerprint is SHA256:rAS+4gVqPJj7yfVDHlhG1g5bQP+VgMczooGifv+H9vk.
Are you sure you want to continue connecting (yes/no)

cp: can't stat '-o': No such file or directory
cp: can't stat 'ServerAliveInterval=60': No such file or directory
cp: can't stat '-o': No such file or directory
cp: can't stat 'ExitOnForwardFailure=yes': No such file or directory
cp: can't stat '-o': No such file or directory
cp: can't stat 'ServerAliveCountMax=3': No such file or directory
cp: can't stat '-o': No such file or directory
cp: can't stat 'StrictHostKeyChecking=no': No such file or directory
cp: can't stat '-o': No such file or directory
cp: can't stat 'UserKnownHostsFile=/dev/null': No such file or directory
root@solar:/tmp# ssh-keyscan SaController >> /home/root/.ssh/known_hosts

What will be effective and simple solution in Yocto?

- Replace busybox by bash recipe.

- Install openssh-client to run ssh-keyscan to write the target to
.ssh/known_hosts

Appreciate your advice for Yocto Linux embedded system.

Thank you.

Kind regards,

- jupiter

