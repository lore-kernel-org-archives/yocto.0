Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AF90E01567;
	Sun, 30 Jun 2013 23:47:30 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r616sOEH003909; Mon, 1 Jul 2013 07:54:25 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id pda6j1u9sL3o; Mon,  1 Jul 2013 07:54:24 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r616sKTV003905
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 1 Jul 2013 07:54:22 +0100
Message-ID: <1372661219.25291.6.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Halstead <michael@yoctoproject.org>
Date: Mon, 01 Jul 2013 07:46:59 +0100
In-Reply-To: <51D11F2E.6070104@yoctoproject.org>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com> <1372427783.9930.258.camel@ted>
	<1372482483.9243.42.camel@envy.home>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52828@ORSMSX101.amr.corp.intel.com>
	<51D11493.6030602@yoctoproject.org> <1372657489.4401.7.camel@envy.home>
	<51D11F2E.6070104@yoctoproject.org>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: Darren Hart <darren.hart@intel.com>, yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Mon, 01 Jul 2013 06:47:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2013-06-30 at 23:18 -0700, Michael Halstead wrote:
> On 06/30/2013 10:44 PM, Darren Hart wrote:
> > On Sun, 2013-06-30 at 22:33 -0700, Michael Halstead wrote:
> > > I can change the name shortly. Is there any reason to keep a read-only
> > > copy available at the current location temporarily?
> > Not really. Unless Bruce is using it in some automated scripts that need
> > to be updated.
> > 
>
> The name has been changed. Shall we update the description or is
> "Supplementary metadata layers to extend the Poky core" still
> appropriate?

We can change it to something like "Supplementary linux-yocto kernel
development metadata" unless Bruce has any better description.

Cheers,

Richard


