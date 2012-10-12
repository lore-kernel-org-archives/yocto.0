Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670D5E01468
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 20:55:42 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 11 Oct 2012 20:55:41 -0700
Received: by mail-we0-f176.google.com with SMTP id z53so1659365wey.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 20:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:x-gm-message-state;
	bh=lqhMky3tX55veyY99VUBAFJAJ6uPfEWe2n8Vvplip9Q=;
	b=D76TLvIzz8didLdZmdWNwXs03TY8VOsJbREtFT1x5IULApCxpR8GNUmxuE84zOMfDp
	D77HwG4dcHxjwoN6qGyIpQlklA7yoyjrg/i5ZsEuE5+o6X4P8TTN1ru0QOA8JBLmudgg
	fOcSUkZepCjCY35gaOXXjedCwBn96jKqBWMnt+QnkXyG1fjLXSk/Ac6yyL4GATfuI/bN
	PTIjuJgV1tLKkvwbreoY2YzKHiEJ+ZIHuy7SySYnRBmKAS1Na+YRA+1mP4P+YlS1o57K
	fLB1D1MDabYi9iZcSEZSkG5AqeV+LuEqxHHhrxkD4znXiXy+t2WYhnJEfa9CHMExm4Wj
	vK4A==
Received: by 10.180.8.134 with SMTP id r6mr2705857wia.18.1350014138582;
	Thu, 11 Oct 2012 20:55:38 -0700 (PDT)
Received: from [192.168.1.6] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id cl8sm1083179wib.10.2012.10.11.20.55.36
	(version=SSLv3 cipher=OTHER); Thu, 11 Oct 2012 20:55:37 -0700 (PDT)
Date: Fri, 12 Oct 2012 04:55:32 +0100
From: Ross Burton <ross.burton@intel.com>
To: =?utf-8?Q?Kamble=2C_Nitin_A?= <nitin.a.kamble@intel.com>
Message-ID: <21BF99B743904E1B97C27045E7FFDD0C@intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C15731D0E@ORSMSX106.amr.corp.intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
	<CAJTo0LYmbD=HJEECJC7usk7A7tLwDxnrFm-pxUoRo2=qyKGyvQ@mail.gmail.com>
	<ADD6A3980E8C39419A432FF422031B4C1573164F@ORSMSX106.amr.corp.intel.com>
	<CAJTo0LaA9FMThnZpb+F3T8d_XfUqFW55BXUns57jW92Phi_wGw@mail.gmail.com>
	<ADD6A3980E8C39419A432FF422031B4C15731D0E@ORSMSX106.amr.corp.intel.com>
X-Mailer: sparrow 1.3.2 (build 507.11)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQmw26tTpQugBf8m7ClhwNYaDy4a/kzBL/QVJjAE7a4l/J2OXtg6Ojrql+JOBx30O1w+3TOW
Cc: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>,
	=?utf-8?Q?Hart=2C_Darren?= <darren.hart@intel.com>
Subject: Re: [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Fri, 12 Oct 2012 03:55:42 -0000
Content-Type: multipart/alternative; boundary="507794b4_327b23c6_2930"

--507794b4_327b23c6_2930
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

It's a package produced by libclutter-1.8, not a recipe. 

Ross-- 
Ross Burton
Sent with Sparrow (http://www.sparrowmailapp.com/?sig)


On Friday, 12 October 2012 at 00:39, Kamble, Nitin A wrote:

> 
> 
> > -----Original Message-----
> > From: Burton, Ross [mailto:ross.burton@intel.com]
> > Sent: Thursday, October 11, 2012 9:54 AM
> > To: Kamble, Nitin A
> > Cc: yocto@yoctoproject.org; Zanussi, Tom; Hart, Darren
> > Subject: Re: [yocto] [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as
> > preferred version of mesa-dri
> > 
> > On 11 October 2012 00:10, Kamble, Nitin A <nitin.a.kamble@intel.com>
> > wrote:
> > > So far I have tested with glxgears and glxinfo with the 8.0.4 version of
> > 
> > mesa-dri. And I did not find any issues. And Tom has been testing the same
> > way so far without any complaints. If there is something which can help
> > things test further, it would be nice to add it to the poky tree; so that it can
> > become part of standard tests, and QA also can use it.
> > 
> > A slightly better test than glxgears that is in oe-core is in libclutter-glx-1.0-
> > examples. Run "test-interactive test_cairo_flowers" in a terminal, you
> > should get flowers falling down the screen.
> > 
> 
> 
> 
> Hi Ross,
> I am not finding this recipe in the poky master.
> 
> Nitin
> 
> 
> 
> > (on cdt, this results in a PVR driver error - #3280)
> > 
> > Ross 
> 
> 
> Attachments: 
> - winmail.dat
> 



--507794b4_327b23c6_2930
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


    <div id=3D=22reply-content=22>
        It's a package produced by libclutter-1.8, not a recipe.
    </div><div id=3D=22reply-content=22><br></div>
    <div id=3D=2267D2C9918=463245ADB2D6345E89=4636DA7=22><div>Ross</div>-=
-&nbsp;<br>Ross Burton<br><div>Sent with <a href=3D=22http://www.sparrowm=
ailapp.com/=3Fsig=22>Sparrow</a></div><div><br></div></div>
    =20
    <p style=3D=22color: =23A0A0A8;=22>On =46riday, 12 October 2012 at 00=
:39, Kamble, Nitin A wrote:</p>
    <blockquote type=3D=22cite=22 style=3D=22border-left-style:solid;bord=
er-width:1px;margin-left:0px;padding-left:10px;=22>
        <div id=3D=22quoted-message-content=22><div><div><br></div><div><=
br></div><blockquote type=3D=22cite=22><div><div>-----Original Message---=
--</div><div>=46rom: Burton, Ross =5Bmailto:ross.burton=40intel.com=5D</d=
iv><div>Sent: Thursday, October 11, 2012 9:54 AM</div><div>To: Kamble, Ni=
tin A</div><div>Cc: yocto=40yoctoproject.org; Zanussi, Tom; Hart, Darren<=
/div><div>Subject: Re: =5Byocto=5D =5BPATCH 2/5=5D crownbay.conf: specify=
 the 8.0.4 version as</div><div>preferred version of mesa-dri</div><div><=
br></div><div>On 11 October 2012 00:10, Kamble, Nitin A &lt;nitin.a.kambl=
e=40intel.com&gt;</div><div>wrote:</div><blockquote type=3D=22cite=22><di=
v>   So far I have tested with glxgears and glxinfo with the 8.0.4 versio=
n of</div></blockquote><div>mesa-dri. And I did not find any issues. And =
Tom has been testing the same</div><div>way so far without any complaints=
. If there is something which can help</div><div>things test further, it =
would be nice to add it to the poky tree; so that it can</div><div>become=
 part of standard tests, and QA also can use it.</div><div><br></div><div=
>A slightly better test than glxgears that is in oe-core is in libclutter=
-glx-1.0-</div><div>examples.  Run =22test-interactive test=5Fcairo=5Fflo=
wers=22 in a terminal, you</div><div>should get flowers falling down the =
screen.</div></div></blockquote><div><br></div><div><br></div><div>Hi Ros=
s,</div><div>   I am not finding this recipe in the poky master.</div><di=
v><br></div><div>Nitin</div><div><br></div><div><br></div><div><br></div>=
<blockquote type=3D=22cite=22><div><div>(on cdt, this results in a PVR dr=
iver error - =233280)</div><div><br></div><div>Ross</div></div></blockquo=
te></div></div>
        =20
        =20
        <div style=3D=22border-bottom: 1px solid =23f0f0f0; height: 10px;=
=22>
        </div>
        <br>
        =20
        <div style=3D=22font-weight: bold; font-size: 14px; margin-bottom=
: 5px;=22>Attachments:</div>
        =20
        =20
        =20
        =20
        =20
        =20
        =20
        <div>
            =20
            <div style=3D=22=22>- winmail.dat</div>
            =20
        </div>
        =20
        =20
        =20
    </blockquote>
    =20
    <div>
        <br>
    </div>

--507794b4_327b23c6_2930--
