Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD8D8E00B37; Thu,  3 Mar 2016 08:01:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7741DE00951
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 08:01:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u23G0hqT003630
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Mar 2016 08:00:43 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 3 Mar 2016 08:00:43 -0800
To: Gary Thomas <gary@mlbassoc.com>, <yocto@yoctoproject.org>
References: <56D83EB4.8030804@mlbassoc.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56D85FAA.6060806@windriver.com>
Date: Thu, 3 Mar 2016 10:00:42 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56D83EB4.8030804@mlbassoc.com>
Subject: Re: Extending user add
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
X-List-Received-Date: Thu, 03 Mar 2016 16:01:04 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 3/3/16 7:40 AM, Gary Thomas wrote:
> I have a recipe which creates a user on my target.  This works as expected.
> 
> Is there a way to add/adjust the home directory created for this user?  In
> particular, I'd like to create/change the ~user/.ssh directory for special
> SSH setups.

You would need to likely do this in some post install action.  You can either
setup the config using sed/group/cat -- or copy a pre-canned configuration that
was installed by the package.

> The package I'm building has some very special packaging requirements that I'm
> having a few issues with. Can I expect this statement to work in do_install()
> (or do_install_append())?
>    chown newuser:newuser ${D}/somefile

As long as the recipe properly defines the users/groups (or requires a recipe
that does).  The user/group combination should be available for your usage in
do_install.

...

You should be careful using packages to configure a user account or passwords.
(This is distinctly different from a -system- account, that does not offer
interactive login.)

A package, if available on an upgrade server, can be individually downloaded and
any configuration information can be ripped out of it.  I've seen more then one
package that people are dumping plain text passwords in the post install script
of an RPM.  pretty easy to hack the default accounts in that case!  (opkg/deb
are no more secure in that case.)

Instead you should use use post rootfs install actions.  They are significantly
more secure mechanism to configure the system.  I typically recommend using a
package to add 'standard users', but with login disabled (passwd set to '*').
Then in the post rootfs action, set your default passwords, import login keys
(for ssh), etc.  This way they are never packaged.

> Thanks
> 


