Return-Path: <kergoth@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739CBE00306
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 06:32:51 -0800 (PST)
Received: by iagz35 with SMTP id z35so2671848iag.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 06:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type;
	bh=G8Pe7JMVzNs5OFCanCtNQN/0KFYd3gGQkUBrTMiPQSk=;
	b=Ww7ToFrXuj52PM4J/Xn3i0+c6/DpIBvbNme4h2CtiUaxU8WVKubZcyL0OfRIabtj41
	lYPFXad2OGtfKCrtiAHM/weKCpB/dhad9bNoIp/R7pNyKufMlAWbMb9f1CwG7sBbmBYA
	yF1V94Y7kGuN/978hEc2i6nRJfo5AjdAymvkc=
Received: by 10.50.15.231 with SMTP id a7mr14620571igd.8.1327415570998;
	Tue, 24 Jan 2012 06:32:50 -0800 (PST)
Received: from frey (ip24-251-167-38.ph.ph.cox.net. [24.251.167.38])
	by mx.google.com with ESMTPS id bj3sm22861084igb.4.2012.01.24.06.32.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Jan 2012 06:32:49 -0800 (PST)
Date: Tue, 24 Jan 2012 07:32:47 -0700
From: Christopher Larson <kergoth@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Message-ID: <2F85497E73304B2B8FBE56AEEDEEA234@gmail.com>
In-Reply-To: <1327415044.17885.7.camel@babel.joshhome>
References: <1327402068.2521.8.camel@babel.joshhome>
	<48800CDABB26481EBC58C78EBD05294C@gmail.com>
	<1327415044.17885.7.camel@babel.joshhome>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: overriding a class in custom layer
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
X-List-Received-Date: Tue, 24 Jan 2012 14:32:51 -0000
Content-Type: multipart/alternative; boundary="4f1ec10f_140e0f76_5f44"

--4f1ec10f_140e0f76_5f44
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, January 24, 2012 at 7:24 AM, Joshua Immanuel wrote:
> Hello Christopher,
> 
> Thanks for the reply.
> 
> On Tue, 2012-01-24 at 07:07 -0700, Christopher Larson wrote:
> > Ensure that your layer is before the other in BBLAYERS.
> 
> 
> As you mentioned reordering BBLAYERS to have my custom layer before
> 'meta' layer solved the issue. I was of the notion that setting
> BBFILE_PRIORITY higher for my layer would be sufficient.
> 
> 


Unfortunately, BBFILE_PRIORITY only affects the choice of what *recipes* to use between the different layers, not config files or classes. The latter are found via BBPATH, which is incrementally appended to by each layer.conf. This separation is unfortunate, as it means part of the layer priority is in the user's hands (or the script generating bblayers.conf, if using one), and part is in the layers' hands (layer.conf), but that's the way it is for now.

-- 
Christopher Larson

--4f1ec10f_140e0f76_5f44
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div><span style=3D=22color: rgb(160, 160, 168); =22>On T=
uesday, January 24, 2012 at 7:24 AM, Joshua Immanuel wrote:</span></div>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div><div>Hello Christopher,</div><div><br=
></div><div>Thanks for the reply.</div><div><br></div><div>On Tue, 2012-0=
1-24 at 07:07 -0700, Christopher Larson wrote:</div><blockquote type=3D=22=
cite=22><div>Ensure that your layer is before the other in BBLAYERS.</div=
></blockquote><div><br></div><div>As you mentioned reordering BBLAYERS to=
 have my custom layer before</div><div>'meta' layer solved the issue. I w=
as of the notion that setting</div><div>BB=46ILE=5FPRIORITY higher for my=
 layer would be sufficient.</div></div></div></span></blockquote><div><br=
></div><div>Unfortunately, BB=46ILE=5FPRIORITY only affects the choice of=
 what *recipes* to use between the different layers, not config files or =
classes. The latter are found via BBPATH, which is incrementally appended=
 to by each layer.conf. This separation is unfortunate, as it means part =
of the layer priority is in the user's hands (or the script generating bb=
layers.conf, if using one), and part is in the layers' hands (layer.conf)=
, but that's the way it is for now.</div><div><br></div><div>--&nbsp;</di=
v><div>Christopher Larson</div>
            

--4f1ec10f_140e0f76_5f44--
