Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C15A7E004FE
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2013 09:53:52 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id g10so1345279qah.11
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2013 09:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=4trt4vav633iKtjY6hhfhA4o6weao0Ig4O2g0+G7ouk=;
	b=BjCjj+qg6hsIq9QLihKjQ02g3MpMRVA+2rm8+Z9gPFcVcn3n2BbkhfJQ02Q5sZ3vZ0
	nCheGxdbrQ++npIKj7UHWOfoIE2Ke0sForIfQPswBHVPZIYsCGJeI2Ivib0MjCxBowIc
	CmQ5KJSISaXOZwqe5ysW6yJk1kPCkrI/8nMtjn63mPu8wG2p3snglA4mkZnasnTH7CfW
	KjHP3+A9apT6b9AUWKzcBLia1nS1rArc11V0h1KhuAh1M5IfmPg9DVo7Ua8KqtG9jjmJ
	rNg4ij3Mf9ZD8TxSFqoRzFxp+lF78hyH0U6a49Prkl+0r+OEFHUOdoOrO/vKfF60Swku
	nx5w==
MIME-Version: 1.0
X-Received: by 10.224.58.201 with SMTP id i9mr35308640qah.81.1362419631926;
	Mon, 04 Mar 2013 09:53:51 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Mon, 4 Mar 2013 09:53:51 -0800 (PST)
Date: Mon, 4 Mar 2013 18:53:51 +0100
Message-ID: <CAFyqS9qxQsDao+_4Wot6vaimrY-hN=nDQgRqWOBk2YBcF1cszQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: how to handle a source tree with both user-space and kernel module sources
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
X-List-Received-Date: Mon, 04 Mar 2013 17:53:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

How could a package that is part of one single git repo but contains
both user-space libraries and several kernel modules be built?
Is there some existing "best praxis" that could be applied?
Currently what we have done is to split this into two recipes, one
that inherits from autotools and the other that inherit from module.
This works fine, but... The problem now is that there will be two
copies of the source repo, one in each package. Is there some way that
a recipe can
inherit from both autotools and module and thus use two different S
targets? Or is our current approach the only way to easily do this,
and thus having two copies
of the repo is just a side-effect that we simply need to accept?
Splitting the source repo is almost out of the questions since they
are heavily dependent on shared header files etc.

Hans

