Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59519E009E2; Sat, 28 Apr 2018 05:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7B5E0086B
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2018 05:21:10 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id a10-v6so5445949ioc.9
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2018 05:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=cSWNPUJkdE6GjOhnWaDgUrNaROQls56F80SMOLK9mUM=;
	b=aM3HMlM+pZ2TbEAxFZ6T0mO/aWh/7cGVi1URU4CkSxjh60ygxXyEHM+bdzgkyyR1gV
	M1wW47nQh1+EF4Mx2r14nSABrpSVD2EG1glpHhyq1OJMqZ13PXxmn+7Ls5XWSJbaesbv
	UInMmrWjN53xIGvBNP+1LLYgU3QiKbkFqBFfk69mel33sixMEj5VulF64KyvIvOGHqfx
	4WW8UqSHh4LEJ1XT4/cE18zFhwejRnUbj8oEnDig6N7d7vbHzIcY+nHnOFdYrqps3gmK
	vc8S7VTOoaBVOFM4Y/1LoOkxT5kQdOMxIkmYJkyc0qcxQ+bzJMeNYYSAG9DE5to20qu3
	iwWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=cSWNPUJkdE6GjOhnWaDgUrNaROQls56F80SMOLK9mUM=;
	b=ZQ4jdV4XzY60RCxCN19NojZLXz/tL3q1FVWQXCkUJ8sObbGSDxQAo/7dwvwGxyR6Ai
	0U3KcjO6mpTNLhhH67odae9XwcKsnAzzE9hX/Q44QPAf9tFr8fEM60StdqsrPTdaSTP8
	7Z+2TpYVGcuFpcgCQkCBscyQyM1mA38RJwhgPHaL/wb5cImYukJCBk+wq1lYpiKUvpU/
	/zQBmQzQGEYezERkobwhPrbvIVEo8KzeiNosq7C09czoF3XZgnd3hb/l7ychD3gKyhsF
	W2q9vFnK9c1x0gigp38KBNy+PKfz3vE+GOFqoFMir1oF9efZDn/kb7u3oqG1SnXEJF+a
	6XEg==
X-Gm-Message-State: ALQs6tAkWhtvR2XWq03fHy7DOouKmfa4NkevXn0qzdK8gb/xfeSo5Rx2
	j8PVjWcWsO/hen0je9ESCs/2zx5uplCAra6Vcu+NVQ==
X-Google-Smtp-Source: AB8JxZrtGKWRRuF2n+GaWEQPaEpJ38nAnMhOu+nU8mvXlZtEr+BWbyQim6HF7KUvXJnIt4dNRBqz5OXdokVEo3H06bQ=
X-Received: by 2002:a6b:b74b:: with SMTP id
	h72-v6mr5826109iof.201.1524918070408; 
	Sat, 28 Apr 2018 05:21:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Sat, 28 Apr 2018 05:20:50 -0700 (PDT)
In-Reply-To: <7ED8F308-F150-4C07-9FA9-325E45D1388B@comcast.net>
References: <7ED8F308-F150-4C07-9FA9-325E45D1388B@comcast.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 28 Apr 2018 13:20:50 +0100
Message-ID: <CAJTo0LaOtoAVsq_uh+HB9-GiJh7pzPR_hMpoPsUqvTZbFHJAtw@mail.gmail.com>
To: Russell Peterson <bluehills7@comcast.net>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: python & xml2
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
X-List-Received-Date: Sat, 28 Apr 2018 12:21:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The recipe specifies that Python 3 is to be used.  If you want to
build it against Python 2 you'll have to patch the recipe.

Ross

On 28 April 2018 at 00:26, Russell Peterson <bluehills7@comcast.net> wrote:
> I am trying to install libxml2 for python2 in my image recipe.  Seems lik=
e it is being installed in the python3 site packages directory instead of t=
he python2 site packages directory.  While looking into this I have become =
very confused.  Is there some documentation on this?  Do I need to set some=
 kind of variable in the xml2 recipe??
>
> Russell
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

