Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9299E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 13:26:03 -0800 (PST)
Received: by bkcjm1 with SMTP id jm1so3568949bkc.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 13:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of b.hutchman@gmail.com designates
	10.205.123.2 as permitted sender) client-ip=10.205.123.2; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of b.hutchman@gmail.com
	designates 10.205.123.2 as permitted sender)
	smtp.mail=b.hutchman@gmail.com;
	dkim=pass header.i=b.hutchman@gmail.com
Received: from mr.google.com ([10.205.123.2])
	by 10.205.123.2 with SMTP id gi2mr2010427bkc.76.1330118762871 (num_hops
	= 1); Fri, 24 Feb 2012 13:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=ahmoHjctKdSiXZLzQ2JE79uMEVSRf8DkqZyAlIaM4HM=;
	b=QgoLgJ3mZXFZfDfcu4KJ7N9DKKt2ahL+pgrWbLRc5VQXL0antsHCkQ6XkwntESoCBf
	XUuGWkcyNE48ALb6HxYLeOUsiWhav+Kyqmah8UsqPAQr+oYkFQH49BqyE2/U0Hw0vW1z
	JMYjAJ7bj06LsWhFtiOrjlyfF5l1tcH2pkOD4=
MIME-Version: 1.0
Received: by 10.205.123.2 with SMTP id gi2mr1653340bkc.76.1330118762806; Fri,
	24 Feb 2012 13:26:02 -0800 (PST)
Received: by 10.204.229.198 with HTTP; Fri, 24 Feb 2012 13:26:02 -0800 (PST)
In-Reply-To: <CAFZh4h_NjvLfqjJfY6eMhESrNOubE5LWRqYwgnWxRndD=6w_qQ@mail.gmail.com>
References: <CAFZh4h909x+Ckk2Fed-YtEyZ_YhKJQV82=RHV++AE1mdp3DFGw@mail.gmail.com>
	<CAFZh4h_DZVM0-P6VjiZd4Czqiq5UGppS1qRhg2G7sKR5W2n5aw@mail.gmail.com>
	<E95BAB41-4F4A-4A90-A975-FFD882EB41F3@ti.com>
	<CAFZh4h_NjvLfqjJfY6eMhESrNOubE5LWRqYwgnWxRndD=6w_qQ@mail.gmail.com>
Date: Fri, 24 Feb 2012 16:26:02 -0500
Message-ID: <CAFZh4h_P-gu3Bo9yivMXYfcw77HF1Q3E3QipHrZgk2m+RshUGQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-ti] bitbake ti-syslink fails for MACHINE=c6a816x
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
X-List-Received-Date: Fri, 24 Feb 2012 21:26:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Oops, hit return too quick on auto completion of email address ...
this was meant for meta-ti list!

Please forgive me and sorry for the noise.

Brian

