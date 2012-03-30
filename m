Return-Path: <koen@dominion.thruhere.net>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB7CAE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 11:44:11 -0700 (PDT)
Received: by yenq4 with SMTP id q4so693661yen.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 11:44:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:subject:date:message-id:cc:to:mime-version:x-mailer
	:x-gm-message-state:content-type:content-transfer-encoding;
	bh=SNlWjdSRoic3NyiSlWe3HmXuVb7T9GNoCjfVyF9fkKw=;
	b=hiZBeLcLqJFI7jOBZsa2fLNou8KE/Ru0X2WseaJ6xAkqRoNUR2LESlg3DVhEeMZ8kO
	pW8LREx7Pp7OuKRWKBzszo5C/Myqh2voIpNWK0QNMYp6hFKQqGQTef8Npr3VA9rkV8HA
	k5bJb1tMs8tBr0ZiKdlbTz0+UhhPnH/B8bCQBXqTngll6jRD/Jym/5dRbAovoWVPcOo7
	VAlYKxbj98hCWR6yZMODKnk7MTHmye0TLXYY5Xkid8cjLpY2nvfEkXix8fnLub3wjF0/
	svsv6KltVmrfUM/oyo21lV1ZvrhswK5pXz383ZFZRnyt4NpyXJsM0EuSYfyDfk0LcLeQ
	JDfg==
Received: by 10.68.125.134 with SMTP id mq6mr12126303pbb.74.1333133051040;
	Fri, 30 Mar 2012 11:44:11 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id l4sm7913813pbl.27.2012.03.30.11.44.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 11:44:10 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Fri, 30 Mar 2012 11:44:23 -0700
Message-Id: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
To: "yocto@yoctoproject.org list" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQkHlXWRyt+DPlQbz64jD71aBa8LGtq/E6VvJq2gpM9Y1gdbFumEDjpBg7BWX5WbkTppnjiq
Subject: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 18:44:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

RP said I should raise this on the yocto lists, so here it is:

The Angstrom core team would like to move angstrom under the yocto =
banner so we can formally claim to be 'yocto'.

What is the process to make that happen? I suspect OSVs will need to =
know as well, since lately yocto is being defined as 'poky + 1 bsp =
layer' which makes it impossible to provide any added value if you want =
to keep calling it 'yocto' to your customers.

regards,

Koen=

