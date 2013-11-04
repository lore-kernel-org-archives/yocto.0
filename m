Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B85FE01351
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 06:50:26 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id wp18so7208406obc.1
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 06:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MqWzaxDN51RzmkWikpvNoXyAbRXXG7OvE76E3NmB94o=;
	b=bOFseKxZMVHdQ/DZxu3bGwNsXRewSkMuakJla18e5TMkwUfgjqfxeM+V2HOTMKky7S
	AQ4e7AMDEaxZMXiohe4buSCxqpVkF09zc+dct7w9laRpYkgZj1ToA97x8+PnQUKXZl86
	KwTMEjT+lymA+oPQS41M8OWSaDgkYfwc4YdVL4SlgyHcU1d67wTf+gdH7xejWcECGhmQ
	ebjqSe5CloNvPDXHiDEFsCjw/tshc6K0IKQF8Mwmq39iCQaN1bzVfW8c4UKSKvjR+T6e
	nywQqHd1SPJoa15PbKpb/ed+XTX+MuC5LuCrnTx4QDEonBNdy/eNU8TP45P0HzvfmRTZ
	AuMQ==
MIME-Version: 1.0
X-Received: by 10.60.142.8 with SMTP id rs8mr6108371oeb.34.1383576624831; Mon,
	04 Nov 2013 06:50:24 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Mon, 4 Nov 2013 06:50:24 -0800 (PST)
Date: Mon, 4 Nov 2013 15:50:24 +0100
Message-ID: <CAFyqS9pZg6sAQ3ucvq9YJ9dce43DK2uWcP9vqyFWcAndnMr8dQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto 1.5: busybox instead of tinylogin, need some help
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
X-List-Received-Date: Mon, 04 Nov 2013 14:50:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. I am currently working on moving from Yocto 1.4 to 1.5 and
instantly stumbled into a few minor problems (this being one of them).
In 1.5 tinylogin is replaced by busybox. What we had before in our
distro conf (it require poky.conf) was:

# Use tmpdevfs and the busybox runtime services
VIRTUAL-RUNTIME_dev_manager = ""
VIRTUAL-RUNTIME_login_manager = "tinylogin"
#VIRTUAL-RUNTIME_init_manager = ""
VIRTUAL-RUNTIME_keymaps = ""

Obviously this does no longer work. Is it as easy as simply commenting
out VIRTUAL-RUNTIME_login_manager and leave it at the default from
packagegroup-core-boot?
Will our old init-manager also be compatible? I believe we used
tiny-init before?
Another thing, since this will require a new set of busybox options to
be enabled, and we need to modify it slightly, is there some concept
similar to configuration fragments also available for busybox? Was
thinking about how clumsy it is right now since our .bbappend for
busybox basically copied the config from the poky base meta. Using
configuration fragments would make it easier for us to migrate in the
future.

Thanks.
Hans

