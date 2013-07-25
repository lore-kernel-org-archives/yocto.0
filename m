Return-Path: <ashcharles@gmail.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40EF5E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 19:00:01 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id oz10so87985veb.3
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 19:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=WpXm5KYQq3003OKjjzj7k9Bif/Pmiw7P3gkllIrrmw0=;
	b=AFn2GbPctLUxTkDkJ4Fiu5LDoRY5tERC3UuqnHImwaxHXdi3XDa8Dq3DkrWB2Fc9Gi
	7dlH7hFh1Ct/y3UccWpDOGBRZlqd/0DmgtJ3rr1kK279XuSO5NkXVo9aKr3UoSE324PH
	K6P9YaL4d0nfusafmInwu9eZTVa0PpQSxQ24Iw/3BioO/xVPRuOATSt35gjdtDoe2Kvn
	xp3aft9y0k3sYTnn7muy0V6BHJNHcyWwW3CSeVEYrDeQjgtYAzLjQqVJdzGMLM3Xl/y7
	rod03UtbhbKelUxNLXrG+QR7NLBDxDkA1PM6pkTY8WGbCKXWkJTQW/IQmmgjKn479QES
	2HIw==
X-Received: by 10.58.155.37 with SMTP id vt5mr16594986veb.41.1374717600877;
	Wed, 24 Jul 2013 19:00:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.180.133 with HTTP; Wed, 24 Jul 2013 18:59:30 -0700 (PDT)
From: Ash Charles <ashcharles@gmail.com>
Date: Wed, 24 Jul 2013 18:59:30 -0700
Message-ID: <CAK8F28k_8VR0qdC8JY2W020gx4EA4fGpw0yesodnLJ6j5WfT6A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Configuring Channels for Smart PM
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
X-List-Received-Date: Thu, 25 Jul 2013 02:00:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


I'm looking to use a bbappend to add a repository/channel that the
smart package manager can use out of the box.  For zypper, this was
just a question of adding a configuration file to the recipe.

How might I preconfigure Smart?  The only way I've come up with so far
is a postinst 'smart channel --add....'

Thanks,
--Ash

