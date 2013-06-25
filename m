Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id BF7F8E0051D
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 17:39:10 -0700 (PDT)
Received: (qmail 16202 invoked by uid 1003); 25 Jun 2013 00:39:09 -0000
Received: from unknown (HELO ?192.168.1.122?) (philip@opensdr.com@71.171.20.82)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	25 Jun 2013 00:39:09 -0000
Message-ID: <51C8E6AC.5000704@balister.org>
Date: Mon, 24 Jun 2013 20:39:08 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Jeff Osier-Mixon <jefro@jefro.net>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
	<CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
	<51C88F22.6030605@balister.org>
	<CA+YB3rbnUOssFc-w5Ak-X_rVPqhJnkJ+NiWEyJDJXL61gGJ0Gg@mail.gmail.com>
In-Reply-To: <CA+YB3rbnUOssFc-w5Ak-X_rVPqhJnkJ+NiWEyJDJXL61gGJ0Gg@mail.gmail.com>
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
X-List-Received-Date: Tue, 25 Jun 2013 00:39:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/24/2013 02:37 PM, Jeff Osier-Mixon wrote:
> On Mon, Jun 24, 2013 at 11:25 AM, Philip Balister <philip@balister.org> wrote:
>> Showing how Poky (the reference distribution) is built would be a nice
>> way to introduce people to building their own custom distributions using
>> OpenEmbedded.
> 
> Totally agree, but I would relegate that to a separate effort. The
> main problem with diagrams like this is trying to squeeze in too much
> information in order to preserve completeness, at the expense of
> clarity. It would be more ideal to start with a very simple diagram,
> then move on to other diagrams to zoom in on pertinent detail. It is a
> delicate balancing act. In this case, I would say to put "how Poky is
> built" into the 3rd or 4th diagram in a series.
> 
> I'm glad to see this conversation happening!

I totally agree we drifted way beyond the initial discussion of the
figure. The key thought here is understanding how Poky differs from a
typical use of oe-core + other layers.

Philip

