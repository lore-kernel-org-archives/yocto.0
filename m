Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 97DF5E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 11:25:40 -0700 (PDT)
Received: (qmail 15795 invoked by uid 1003); 24 Jun 2013 18:25:39 -0000
Received: from unknown (HELO ?192.168.1.122?) (philip@opensdr.com@71.171.20.82)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	24 Jun 2013 18:25:39 -0000
Message-ID: <51C88F22.6030605@balister.org>
Date: Mon, 24 Jun 2013 14:25:38 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
	<CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
In-Reply-To: <CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 18:25:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/24/2013 12:59 PM, Burton, Ross wrote:
> On 24 June 2013 17:55, Philip Balister <philip@balister.org> wrote:
>> Explaining how poky is built up from oe-core + meta-yocto +
>> meta-yocto-bsp + some other stuff would be really helpful in reducing
>> confusion over what all the pieces are and where they come from.
> 
> Agreed - explaining clearly that Poky is mostly an aggregation of
> existing repositories and not actually canonical upstream for anything
> is probably a good move, as this is clearly misunderstood by many
> people.

Showing how Poky (the reference distribution) is built would be a nice
way to introduce people to building their own custom distributions using
OpenEmbedded.

Philip

