Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88477E00874; Thu, 27 Nov 2014 13:00:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14BD6E006EF
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 13:00:10 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:47331
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1Xu6AR-001VDa-NP; Thu, 27 Nov 2014 21:00:04 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
Date: Thu, 27 Nov 2014 21:00:02 +0000
Message-Id: <D4365608-70BA-4FF1-AF43-7C8334DA93BF@keylevel.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
To: Chan Kit Yu <yuchankit@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Creating a recipe to create /usr/local
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
X-List-Received-Date: Thu, 27 Nov 2014 21:00:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 27 Nov 2014, at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:

> Hi all,
>=20
> I'm not sure if emailing this is the most appropriate way and I
> apologize in advance if that's not.
>=20
> I have some scripts that require /usr/local to exist in Yocto and
> therefore I need to a recipe to create /usr/local directory. I tried
> to accomplish this with a simple recipe but that proved futile.
>=20
> Although bitbaking that particular recipe was fine, trying to include
> that package in local.conf resulted errors and those errors are
> gibberish (it listed all the packages inside the image that I was
> trying to comple) . Here's my simple stupid recipe:
>=20
> SUMMARY=3D "...."
> LICENSE =3D "something...."
> ...
> ...
> INSANE_SKIP_${PN} =3D "installed-vs-shipped"
>=20
> do_install(){
>     mkdir -p ${D}/usr/local
> }

You need to use 'install' rather than mkdir


> Is there a better way (or preferably the canonical way) to do this?

Yes, there are some definitions you can use. In your case it would be:

   # Install the 'local' directory to make sure it exists
   install -d ${D}${prefix}/local

   # Install a file to this location
   install -f ${WORKDIR}/myfile ${D}${prefix}/local

The available definitions are shown at the top of meta/conf/bitbake.conf =
in your Poky installation.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


