Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD74E01403
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 08:37:31 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-81-157.range86-137.btcentralplus.com
	[86.137.81.157]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 03EF3952B
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 16:37:29 +0100 (BST)
Message-ID: <51CB0AB3.2070107@r-finger.com>
Date: Wed, 26 Jun 2013 16:37:23 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAM1ZcoUioyojYfHot5ue+2qfpiYm884T7psN8aSg+XLdUjH+-Q@mail.gmail.com>
In-Reply-To: <CAM1ZcoUioyojYfHot5ue+2qfpiYm884T7psN8aSg+XLdUjH+-Q@mail.gmail.com>
Subject: Re: run commands after installation
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
X-List-Received-Date: Wed, 26 Jun 2013 15:37:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/06/13 15:32, Katu Txakur wrote:
> I want to create a user after adding the snmp recipe. The command to do
> that is:
> 
> net-snmp-config --create-snmpv3-user -a "my_password" myuser
> 
> What's the best way to do it? I have tried from do_install_append and
> also from ROOTFS_POSTPROCESS_COMMAND but no luck so far.

You need a postinst script for that sort of a thing.

Tomas

-- 
http://sleepfive.com

