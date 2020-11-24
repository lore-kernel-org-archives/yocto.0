Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web10.49417.1606209327150714761
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 01:15:27 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4CgJJp4Btgz5tlH;
	Tue, 24 Nov 2020 10:15:22 +0100 (CET)
Date: Tue, 24 Nov 2020 10:15:21 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Michael Callahan <coder.callahan@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Python function caching question
Message-ID: <20201124091521.xuyjtivt37ywgp2n@qschulz>
References: <CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
 <CAMKF1sp_-3CR-Nc1x1DELdp22NKDkGV7t-tfqKYtoQEj7arHqA@mail.gmail.com>
 <CADm5WxP=uGt5oLVe-QpL7guq2nhn2AEsLvPSv0y8A+BLQEyTnQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADm5WxP=uGt5oLVe-QpL7guq2nhn2AEsLvPSv0y8A+BLQEyTnQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Michael,

On Mon, Nov 23, 2020 at 04:49:30PM -0700, Michael Callahan wrote:
> I do not want do_compile to run again, it rebuilds the whole image.
> What is the best way to always run find_version?
> 

Use an anonymous python function that sets VERSION, e.g.:

python __anonymous() {
	d.setVar('VERSION', find_version(d))
}

as anonymous python functions are always executed during parsing.

Then add the following to your recipe:
do_compile[vardepsexclude] += "VERSION"

VERSION will always be set appropriately every time the recipe is parsed
but do_compile will only be rerun when a change in the task has occurred
to the exception of the VERSION variable.

No idea if that works as I don't use those, but that's an hint. Anyway, you
probably want a behavior similar to DATETIME's.

Cheers,
Quentin

> On Sun, Nov 22, 2020 at 7:53 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Sun, Nov 22, 2020 at 6:17 PM Michael Callahan
> > <coder.callahan@gmail.com> wrote:
> > >
> > > I am having trouble with sstate caching of my os-release.bbappend and
> > > am stuck.  The simple example file looks like something below, where I
> > > am setting a variable from a computed python function.  What's the magic
> > > to make the find_version(d) always run but do_compile to only run if
> > > VERSION changes?  I basically want something like
> > > `find_version[nostamp]="1"` but that seems to only work for tasks.
> > >
> > > def find_version(d):
> > >     import subprocess
> > >     cmd = "git describe --long"
> > >     return subprocess.check_output(cmd).rstrip().decode('utf-8')
> > >
> > > VERSION = "${@find_version(d)}"
> > > # do_compile uses $VERSION
> > >
> >
> > perhaps mark the task which is using this variable as nostamp.
> >
> > > 
> > >

> 
> 
> 


-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com
