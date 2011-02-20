Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47ACC4C800B6
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 12:05:15 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A4B8B1660354; Sun, 20 Feb 2011 11:04:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A3FB2166029A;
	Sun, 20 Feb 2011 11:04:18 -0700 (MST)
Message-ID: <4D6157A2.8050906@mlbassoc.com>
Date: Sun, 20 Feb 2011 11:04:18 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <3776E9FA-795C-450E-83EF-FF154CF1B6FF@keylevel.com>
In-Reply-To: <3776E9FA-795C-450E-83EF-FF154CF1B6FF@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do I use layers to replacing system configuration files?
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
X-List-Received-Date: Sun, 20 Feb 2011 18:05:15 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/20/2011 10:58 AM, Chris Tapp wrote:
> I want to be able to change the contents of 'interfaces' in a way that means I don't have to change the meta/ tree. It looks like layers should do this for me (section 3.4.1 of the
> Poky Reference Manual), but I can't seem to get my files to take precedence.
>
> For example, a default build for laverne-4.0.1 uses core-recipes/netbase/netbase/qemux86/interfaces.
>
> I've created an empty copy of the meta-emenlow layer, changed its layer.conf as required and added it in to bblayers.conf. I can tell this is getting picked up as I get a warning
> that it contains no .bb files (it will eventually).
>
> However, my meta-new/packages/netbase/netbase/qemux86/interfaces file isn't overriding the one above.
>
> What else do I need to do? Do I need to have something other that .bb and .bbappend added to BBPATH (or something else)?

You'll need a meta-new/packages/netbase/netbase_4.44.bbappend file which
tells bitbake where to find your override files.  I do this all the time,
for example, I have a board with two targets:
   $ tree meta-ppc/packages/netbase/
   meta-ppc/packages/netbase/
   ├── netbase-4.44
   │   ├── cobra
   │   │   ├── interfaces
   │   └── ppc8379
   │       ├── interfaces
   └── netbase_4.44.bbappend
   $ cat meta-ppc/packages/netbase/netbase_4.44.bbappend
   THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
   FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

