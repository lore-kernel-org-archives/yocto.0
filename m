Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9808AE003E1; Tue, 28 Mar 2017 11:19:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E01AFE00349
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:19:29 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id EC303C00B6; Tue, 28 Mar 2017 14:19:27 -0400 (EDT)
Date: Tue, 28 Mar 2017 14:19:27 -0400
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170328181927.GA11222@csclub.uwaterloo.ca>
References: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
	<CAMKF1soTiRbge8yY3TJc8+EPgeQpmAPOe1q4=SN=9duSyEix5A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1soTiRbge8yY3TJc8+EPgeQpmAPOe1q4=SN=9duSyEix5A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Tue, 28 Mar 2017 18:19:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 28, 2017 at 10:27:15AM -0700, Khem Raj wrote:
> On Thu, Mar 23, 2017 at 3:28 PM, Cody Piersall <cody@arrc.ou.edu> wrote:
> > Hello,
> >
> > I am building zsh from meta-oe layer, and it has a do_install_append()
> > function defined like this:
> >
> > do_install_append () {
> >     rm -fr ${D}/usr/share
> > }
> >
> > which gets rid of lots lots of useful functionality, like
> > context-aware autocompletion.  Can a bbappend file get rid of that
> > function, or do I need to edit the actual recipe? I've attempted
> > defining an empty do_install_append() { : } but it didn't work.
> >
> 
> if its in a bbappend, there is not much you can do about undoing it except
> to not apply the bbappend or modify it directly.
> 
> So you can send a patch to meta-oe to convince that its a good idea to keep
> /usr/share for zsh, or you can carry a local patch to meta-oe where you undo it

Perhaps instead of deleting it, it should be put in another package that
people can choose to install if they want it.  Deleting it certainly
does seem rather unfortunate if someone actulally wanted it.

-- 
Len Sorensen

