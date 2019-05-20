Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BD2CE00D33; Sun, 19 May 2019 22:00:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.173 listed in list.dnswl.org]
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 046D4E00798
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 22:00:01 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id u199so9017218oie.5
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 22:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+jyBee6NfLAm4qmPHXMLZjGZe7PrxbralEHAQtn/ClE=;
	b=jmxtoAhNEvc7EPBT/K+j6bBw8e1+Y6buTb/qT8y7Jql82Ehl22oxWYCQ2NUGa0W0HQ
	SPLB2O70DwoRXHLq766H5fVNZBHpqR7yuwXclxF/FL8neYcrGPKD9BXBxDVE7m0Vhc6U
	29jVfwEA5b4mJOQvi3iN7ofRzZzOFo3pl+hph1sPaVYZOKXHf1nyYcUiTc3YsyP7H79L
	DmSWD6ZGmao64hlEk67/O693V2k1y5zdGYiCV9dRetWnui+AeNr+pWFMYs71E8Pjl2RU
	WghSD+sm/fLM/1oZ0bA34RHyLJz9PGiNM8k+a7DAHZOTVgZu4VwtGlUZxT8o8r+y08XR
	TEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+jyBee6NfLAm4qmPHXMLZjGZe7PrxbralEHAQtn/ClE=;
	b=ZBjQXsU6MRbpld8nWFyA5MUWLKfjcpScnAAe6zwicKVJb2VPc6MB9UDKwaQ7TI6LeY
	l2rTOj/tLsSX7nIkrBOSDty8PEL5Z9ly5wSzGleOhKroSRTeRx3o0kfcjEAtF0T/9EAS
	/EmB/f+Jt6enebhMgqXqsVfE605JFK74PRqBRxVCpNXCspcLHpnMo8TJ3VPWQ5PKkHEc
	SrQ2EqTeWw88LV+HpvQGvC+0GDOnYCBFbG7eBMKU98DdO+LfYich4B3X9xdB4+1Covs9
	w7s4TKgln99sZP7LEEdn3gwUEDPKs50ho9XWCjd0kb4969hVzQRS+Ab6LOREpOKw6VRf
	cKCA==
X-Gm-Message-State: APjAAAWLy4M4pBvU05hkee4+VxdfNaznyz+MFBVyIIrhdf0D/I9YHHHx
	zMbYlfhUnu4LhfufKsjHFGYATfbfamHwmou+z0ykVg==
X-Google-Smtp-Source: APXvYqzBdnD27kL0ZhpsTUradZtKFn4SvOg6H6TN5quMGlkrLbmx5CdiATtu+q+nArNgWu8UNVa2nb6552M6nEDTCWQ=
X-Received: by 2002:aca:5d86:: with SMTP id
	r128mr21529602oib.135.1558328400017; 
	Sun, 19 May 2019 22:00:00 -0700 (PDT)
MIME-Version: 1.0
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Mon, 20 May 2019 10:29:49 +0530
Message-ID: <CAA_f9ePTA7pC=akY88ANENV0Tw=hXJ12rQwoB7xPnS_7VZwHOw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Mon, 20 May 2019 05:00:03 -0000
Content-Type: multipart/alternative; boundary="000000000000b9fe6205894a9aee"

--000000000000b9fe6205894a9aee
Content-Type: text/plain; charset="UTF-8"

Hi Russell,

I'm also hitting the same "unexpected" errors for my linux-yocto-xxx.bb
recipe/tasks while building extensible SDK for my platform. How did it work
for you?

Warm Regards,
Priyanshu Sharma

--000000000000b9fe6205894a9aee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Russell,<div><br></div><div>I&#39;m also hitting the sa=
me &quot;unexpected&quot; errors for my <a href=3D"http://linux-yocto-xxx.b=
b">linux-yocto-xxx.bb</a> recipe/tasks while building extensible SDK for my=
 platform. How did it work for you?</div><div><br></div><div>Warm Regards,<=
/div><div>Priyanshu Sharma</div></div>

--000000000000b9fe6205894a9aee--
