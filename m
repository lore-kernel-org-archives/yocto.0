Return-Path: <seebs@seebs.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05B18E009C2; Fri, 24 Feb 2017 07:36:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.plethora.net (mail.seebs.net [162.221.74.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2DCBE009A7
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 07:36:10 -0800 (PST)
Received: from seebsdell (home.seebs.net [74.122.98.108])
	by mail.plethora.net (Postfix) with ESMTPSA id E51622ADCE3;
	Fri, 24 Feb 2017 09:36:08 -0600 (CST)
Date: Fri, 24 Feb 2017 09:36:08 -0600
From: Seebs <seebs@seebs.net>
To: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <20170224093608.7cad9603@seebsdell>
In-Reply-To: <f8c08da4-b88a-1c04-238b-e70be65fd59d@advancedtelematic.com>
References: <20170224144815.7243-1-anton@advancedtelematic.com>
	<20170224090515.48425389@seebsdell>
	<f8c08da4-b88a-1c04-238b-e70be65fd59d@advancedtelematic.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo][PATCH 1/1] Filter out erroneous POSIX ACLs
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
X-List-Received-Date: Fri, 24 Feb 2017 15:36:13 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 24 Feb 2017 16:18:38 +0100
Anton Gerasimov <anton@advancedtelematic.com> wrote:

> FIG_FS_POSIX_ACL=y;
> CONFIG_EXT4_FS_POSIX_ACL=y). The problem is that 'cp -a' when copying
> a directory without any ACLs attached will for whatever reason try to
> assign an empty posix_acl_default list to the target directory.

...

It had totally failed to occur to me to check for *empty* lists. I'll
want to re-read the code just in case, but that makes sense and the
patch looked reasonable.

-s

