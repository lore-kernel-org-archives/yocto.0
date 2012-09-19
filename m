Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC5AE0027E
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 08:51:02 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TEMYF-0006ut-P7
	for yocto@yoctoproject.org; Wed, 19 Sep 2012 15:51:00 +0000
Received: from [10.1.7.39] (ICNET-66-210-165-231.icnet.net [66.210.165.231])
	(authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8JFouwJ027607
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 10:50:57 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1/2mNMuN0DXhJl7DgrXquTiMKZVLqCpljY=
Message-ID: <1348069852.1829.20.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: yocto@yoctoproject.org
Date: Wed, 19 Sep 2012 10:50:52 -0500
In-Reply-To: <CA+YB3rY7Uj+_F=y=p6TEo27yBiN52Lg2YdWf_6LFb5dndvR3Qw@mail.gmail.com>
References: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
	<CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
	<CA+YB3rY7Uj+_F=y=p6TEo27yBiN52Lg2YdWf_6LFb5dndvR3Qw@mail.gmail.com>
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Subject: Re: All incompassing documentation
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
X-List-Received-Date: Wed, 19 Sep 2012 15:51:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I would like to point out Yocto's own documentation uses it for two
separate items, which is the point I was making.  Neither of which are
source tarballs....


It is a product produced by Yocto.
It is the items to be installed from the host system.


That may be right, but if so, we can't say that for Yocto it only means
the first, as we use it for the second as well.  If we want it to only
be the first, then we must use a different term for the second, such as
host applications, and the user should be notified of the unusual word
choice and why early in the documentation.  I believe there are several
locations where terms are explained already in the documentation, even
if we later use the term in a way other than that identified as it's
meaning (3.4. Yocto Project Terms comes to mind).  Discussing Package
meaning there, perhaps we should identify the term that will be used for
host package, or how we will identify when the term is used with a
different meaning than the one just given.


Or if we concede that packages is what the user expects to see when
discussing what to install, we need to disambiguate in some way to
differentiate the two uses.  Indexes are good at this.  The biggest
advantage to an index over straight search is that author's can use
context to differentiate the different uses when a word has them.
Another option could be prepending to both the context at each location
used, so we use Yocto package and host package or where we always prefix
context to one of the two for every use.  However, doing only one with a
context makes for more manual searches, where we are making a document
with the goal of making searching for information more effective.


On Tue, 2012-09-18 at 21:02 -0700, Jeff Osier-Mixon wrote:
> <snipped>
> 
> On Tue, Sep 18, 2012 at 12:04 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > On Tue, Sep 18, 2012 at 2:23 PM, Brian Lloyd <blloyd@familyhonor.net> wrote:
> >> Most of my hits for such an item
> >> discuss the packages I will need to install in my host distribution so I
> >> can use the yocto project (not surprised, the danger of a term as vague
> >> as packages).
> >
> > In bitbake/yocto/OE/etc. the term "packages" is not vague and has a
> > very specific meaning: bitbake processes recipes to produce one or
> > more packages. Some of these packages are then assembled into an
> 
> This is quite true - but the term itself is overloaded. I have often
> heard "package" referred to also as the collection of source code one
> would use to create a given piece of software, e.g. "the busybox
> package". This is no doubt the result of downloading numerous
> "packages" from the net in binary form rather than source. It doesn't
> help that there are "source packages" in the RPM world
> (http://www.rpm.org/max-rpm/s1-rpm-miscellania-srpms.html) and in the
> Debian world (http://www.debian.org/doc/manuals/apt-howto/ch-sourcehandling.en.html),
> so the confusion is natural.
> 
> In OE-based systems like the Yocto Project, the term refers to the
> results of a build rather than the ingredients. I agree with you that
> we should continue to push the correct usage to unload the term.
> Anyone have a good term for "source packages"?
> 



