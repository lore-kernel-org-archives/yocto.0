Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3004EE014DF
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 18:40:33 -0700 (PDT)
Received: (qmail 2860 invoked by uid 1003); 17 Apr 2013 01:40:32 -0000
Received: from unknown (HELO ?192.168.1.106?)
	(philip@opensdr.com@71.171.26.125)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	17 Apr 2013 01:40:32 -0000
Message-ID: <516DFD8F.5040007@balister.org>
Date: Tue, 16 Apr 2013 21:40:31 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130311 Thunderbird/17.0.4
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
	<20130416195422.GU10628@jama.dyndns-home.com>
	<CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
In-Reply-To: <CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Wed, 17 Apr 2013 01:40:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/16/2013 04:40 PM, Edward Vidal wrote:
> Can you point me to where I can find

Maybe you should give us some more details. It doesn't look like the
angstrom feeds ahve a package for gnuradio, but we can ask Koen if he
can add it.

If you are building custom images, just add gnuradio to the
IMAGE_EXTRA_INSTALL var (or whatever it is called). Check how gnuradio
is packaged, you may need some other packages for all desired features.

Philip

> 
> gnuradio is already in meta-oe and jenkins is building it every day with
> it :).
> I did a search meta-oe jenkins nothing seems to come up I have seen
> meta-gnurado as part 0f Angstrom.  I believe that is for the processor
> in the ettus research board.
> 
> Thanks
> 
> 
> 
> On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa <martin.jansa@gmail.com>wrote:
> 
>> On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:
>>> With that said how does Angstrom which uses opkg upgrades images that are
>>> build with Angstrom.   I prefer Yocto but I had some pre-built image that
>>
>> The same mechanism as Ross and Trevor said.
>>
>>> came with my beagleboard and I used opkg upgrade  and opkg install
>>> gfortran.   Also has anyone built gfortran, libgfortran, and numpy?
>>> Currently these are some dependencies that I need for GNURADIO?
>>> Thanks Any and all help is appreciated
>>> Ed
>>
>> gnuradio is already in meta-oe and jenkins is building it every day with
>> it :).
>>
>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>>
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

