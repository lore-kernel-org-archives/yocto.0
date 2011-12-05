Return-Path: <madeeha.mailz@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC604E0030F
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2011 10:35:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaal12 with SMTP id l12so5985837eaa.35
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2011 10:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yhyyKBkcnI3ueQGUaoImjCUjTgRvjpZeiXi/9cEDmR4=;
	b=DDAFeJzySm/jj0XC1EPTHjHdsgU3tdhoUA5NwywlQkcjCnvKDoONYXbOTHF0DKB2Ci
	oUV9jnuZuO0OgVHUCkZNpQZ83FGxbctYRtW4cPtC1KtprmL9hX+uZuAXr7nXytmMZPE8
	qS2p7SQlYCXagtmGnzgWmkZde1/nR0HRrKWt8=
MIME-Version: 1.0
Received: by 10.213.22.203 with SMTP id o11mr1295999ebb.65.1323110130233; Mon,
	05 Dec 2011 10:35:30 -0800 (PST)
Received: by 10.213.21.129 with HTTP; Mon, 5 Dec 2011 10:35:30 -0800 (PST)
Date: Mon, 5 Dec 2011 23:35:30 +0500
Message-ID: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
From: madeeha javed <madeeha.mailz@gmail.com>
To: yocto@yoctoproject.org
Subject: HOB usage
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
X-List-Received-Date: Mon, 05 Dec 2011 18:35:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I an using Yocto Edison. My machine configuration is beagleboard. And
when I launch hob and Bake. I get a message that Output Image Type is
not set.When I Edit-> Preferences, I see that jffs2 and tar.bz2 are
set. And even if I select a different type, the message keeps is
there.

Any suggestions?

Thanks!
Best regards,
Madeeha

