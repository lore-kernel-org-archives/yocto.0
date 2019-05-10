Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03773E00D6F; Thu,  9 May 2019 23:00:11 -0700 (PDT)
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
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B67E00D46
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 23:00:10 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id m7so3589663ioa.6
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 23:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SFxlB5rfFMap7Ie4E0i3fV6y7Pr6h/yMTniqIda8eJo=;
	b=JUwUF8USKpfSoiox9viCcIZpEYc+1bxJh6vV9aRS2yGNm5LMf3AeECVaIMNkjXFJ+L
	O/Fl7k3tg4obpwCbXFcRNVBZWPfUSVyO8rnqNFYBL9UaH6GykmIl9JuPFoVcXA4jyeOL
	bANlAfPP/8PXEw3DsFoIYsa4lusrYRmmws+Qsx/S5dgSPnqppP7EHvWyQWcBSJU5e+g7
	s827+Sye9Mii9HGcc+qibL2DU4S6ZzldQmlPYPxmX9SUqs2AcveMKjL+jfURjq0cx24L
	lUu3fKMkUXOdOKZQc0hMvqW+N5xjGumr49kO1J1nSsuED63nwsZvsxfGf3LYfERHeGHz
	NMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SFxlB5rfFMap7Ie4E0i3fV6y7Pr6h/yMTniqIda8eJo=;
	b=MPfe2c7p5tSFtcnozlK+UOQoDY5WyAZybNzE/KTkQSWus5c1XAFtgNYbIX/ZCe9/5z
	nIlplA4foovDQRF0AnivfLpTs7W0cjTE0gfPcrJH7PRehNAXOp50yaB1jNClqwR5w6OP
	NDGP+yTGYCzjxq7fThtko5YO0Y0lFgUVvQMseVEHhcHa4bnXRxyPCBxuPjv27XjgQB0w
	UdXUG/6s9UIQ2F/XbCD5ZLwo0IkK2BNuwAeEx77Ijsjz5cTjow21jJS0Yq/jIfpkAR4W
	JjVtZOcf0jOjyINaK6RPPzJLGaZWpe8f7VVdfsDafbDgvXZsv2f8+X61nmJ0z6BHnibK
	B3JA==
X-Gm-Message-State: APjAAAUw/wpytS7gV8BYFMRxVNjG/7lPzmnqyqJRdgVqiFDW/155bez7
	zASIpF978ceDniOJcpiRSyArKWpEdoKyv8s2xWvTeIaK
X-Google-Smtp-Source: APXvYqweMusPik1CAWsTFMrEdGF1wNZU75kW4v7EPUwI+6gHepHnV/osqlIiRrQFby55E8Eb4VxDRxweRS1daMYFnwM=
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr1646385iop.159.1557468009729; 
	Thu, 09 May 2019 23:00:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a507:0:0:0:0:0 with HTTP;
	Thu, 9 May 2019 23:00:09 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 10 May 2019 16:00:09 +1000
Message-ID: <CAA=hcWRJPnHVi=MQ5g3QZ=z5t45f1wk+E2G0VmEmcEuNHnQ+7w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto image systemd debugging
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
X-List-Received-Date: Fri, 10 May 2019 06:00:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

How did you debug systemd running Yocto image on embedded system when
services or cron jobs  failed to run?

Thank you.

- jh

