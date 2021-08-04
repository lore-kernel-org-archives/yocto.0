Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.5726.1628060729950956519
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 00:05:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1mBAxy-0003di-PN; Wed, 04 Aug 2021 09:05:26 +0200
Message-ID: <85ee84d0903e104a3a10851bedc3588e23700d39.camel@delisys.ch>
Subject: Re: [yocto] (Go) Library for configuring Yocto based boxes?
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: Christofer Dutz <christofer.dutz@c-ware.de>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 04 Aug 2021 09:05:21 +0200
In-Reply-To: <AM7PR05MB68072CB0D9E4F9225C04612BA2EF9@AM7PR05MB6807.eurprd05.prod.outlook.com>
References: 
	<AM7PR05MB68079F0EE9AA57AAC765E903A2EC9@AM7PR05MB6807.eurprd05.prod.outlook.com>
	 <4d53db74437d5a537fbddfc98193b18b35706acd.camel@delisys.ch>
	 <AM7PR05MB68071F9410BE1219864FA253A2EF9@AM7PR05MB6807.eurprd05.prod.outlook.com>
	 <f2eb41515ba6793be96b7f11c66185de17db2609.camel@delisys.ch>
	 <AM7PR05MB68072CB0D9E4F9225C04612BA2EF9@AM7PR05MB6807.eurprd05.prod.outlook.com>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1628060730;c2fc477b;
X-HE-SMSGID: 1mBAxy-0003di-PN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-08-02 at 11:32 +0000, Christofer Dutz wrote:
> Hi all,
> 
> so I guess this is another case of "I should have posed my question
> earlier, than I would have found the soltion myself" ;-)
> 
> So it turns out that:
> 
>                                 err =
> propertyConnection.Update(connectionSettings)
> 
> Only updates the settings, however it doesn't actiavate the changes
> (This happens on the next boot) ... But if I also run 
> 
>                                 _, err =
> nm.ActivateConnection(propertyConnection, device, nil)
> 
> The changes seem to be applied instantly :-)
> 

Glad to hear it works.

> So I guess I'm now safe and managed to get the things I needed working.
> 
> I had a look and NetworkManager doesn't seem to be running, I can find
> a process systemd-networkd however, so I guess everything is setup
> correctly. I also used the nmcli to experiment.
> 
> Do I understand it correctly, is systemd-networkd a different
> implementation of the same service as NetworkManager? Because I can see
> the configs beeing written to "/etc/NetworkManager/system-connections"?
> 

This doesn't sound correct. It's already some time ago that I last
worked on networking. As far as I remember, systemd-networkd and
NetworkManager are working differently:

Configuration files
-------------------
systemd-networkd uses *.network files in /usr/lib/systemd/network,
/run/systemd/network and /etc/systemd/network

NetworkManager uses *.nm-connection files in
/etc/NetworkManager/system-connections (and maybe others that I'm not
aware of)

Command line utility
--------------------

systemd-networkd can be controlled with networkctl
NetworkManager can be controlled with nmcli


I'm not sure why your setup even works, maybe I'm missing something.
For further reading I can recommend the ArchWiki pages (they don't
always apply perfectly to Yocto, but it's close enough and very
detailed) and the respective man pages:

https://wiki.archlinux.org/title/Systemd-networkd
https://wiki.archlinux.org/title/NetworkManager
https://man.archlinux.org/man/systemd-networkd.8
https://man.archlinux.org/man/extra/networkmanager/NetworkManager.8.en

> Chris
> 
> 
> 
> -----Ursprüngliche Nachricht-----
> Von: Nicolas Jeker <n.jeker@delisys.ch> 
> Gesendet: Montag, 2. August 2021 13:18
> An: Christofer Dutz <christofer.dutz@c-ware.de>;
> yocto@lists.yoctoproject.org
> Betreff: Re: [yocto] (Go) Library for configuring Yocto based boxes?
> 
> On Mon, 2021-08-02 at 09:35 +0000, Christofer Dutz wrote:
> > Hi all,
> > 
> > so I invested quite some time to using the NetworkManager to
> > configure 
> > the network settings.
> > I’m using a go library: github.com/Wifx/gonetworkmanager for this.
> > My network configurations now end up in a directory 
> > /etc/NetworkManager/system-connections (I can see files with the name
> > "{connection-id}.nmconnection"
> > However the changes aren't applied. If I run:
> > 
> >      systemctl restart systemd-networkd
> > 
> 
> systemd-networkd and NetworkManager are two different things. Make sure
> that you only have one of them running at the same time.
> 
> A quick solution is to use systemd to disable the systemd-networkd
> service (if that's not already the case). What I did as a more long-
> term solution is removing systemd-networkd in my distro.conf (works in
> local.conf, too):
> 
> PACKAGECONFIG_remove_pn-systemd = "networkd"
> 
> > The network settings don't change (Both network devices were set to
> > DHCP). (By the way … where can I see the default configuration?)
> > 
> 
> I'm currently using nmcli to set my configuration and apply it with:
> 
> nmcli con up {connection-id}
> 
> This works for me even if the connection status is already "up". Not
> sure if it works when you replace the configuration file, but you might
> give it a try. Otherwise restarting NetworkManager should work:
> 
> systemctl restart NetworkManager
> 
> > However if I reboot the box, I can see my changes applied ... until I
> > run the "systemctl restart systemd-networkd" again, because then it
> > switches back to the dhcp settings.
> 
> I suspect this happens because systemd-networkd "overrides" the
> interface configuration that was set by NetworkManager.
> 
> > Any tips on how I can apply my changes without rebooting?
> >  
> > Chris
> > 
> > 
> > -----Ursprüngliche Nachricht-----
> > Von: Nicolas Jeker <n.jeker@delisys.ch>
> > Gesendet: Freitag, 30. Juli 2021 10:06
> > An: Christofer Dutz <christofer.dutz@c-ware.de>; 
> > yocto@lists.yoctoproject.org
> > Betreff: Re: [yocto] (Go) Library for configuring Yocto based boxes?
> > 
> > On Fri, 2021-07-30 at 07:43 +0000, Christofer Dutz wrote:
> > > Hi all,
> > >  
> > > I’m very new to the Yocto world.
> > >  
> > > We are currently working on migrating away from OpenWRT based edge 
> > > devices towards ones that we now have Yocto builds for.
> > >  
> > > All seems to be working nicely on the yocto side.
> > >  
> > > Our application uses a baseline configuration in order to connect
> > > to 
> > > our cloud service and there it fetches it’s configuration (We’ve
> > > got 
> > > a cellular fallback if connectivity doesn’t work at all).
> > >  
> > > With OpenWRT there was a tool called UCI which even had a Go
> > > wrapper 
> > > which we used to apply the configuration to the box (set IP 
> > > addresses, connect to WiFi neworks, configure the serial ports
> > > etc.)
> > >  
> > > Is there some equivalent in the Yocto world?
> > >  
> > 
> > The OpenWRT wiki has a section on porting UCI to different linux 
> > distributions [1], but you can probably skip that completely.
> > Searching for UCI in the recipe index [2] yields a result from the 
> > meta-openwrt [3] layer. I would start with adding that layer and
> > using 
> > the UCI recipe from there.
> > 
> > [1]: https://openwrt.org/docs/techref/uci#usage_outside_of_openwrt
> > [2]:
> > https://layers.openembedded.org/layerindex/branch/master/recipes/?q=uc
> > i
> > [3]: https://github.com/kraj/meta-openwrt
> > 
> > > I would like to avoid generating the file content in the /etc 
> > > directory by hand and firing „restart“ commands to the
> > > corresponding 
> > > services, if there isn’t a better way.
> > >  
> > > Help greatly appreciated :-)
> > >  
> > > Chris
> > > 
> > 
> > 
> > 
> 
> 
> 
> 
> 


