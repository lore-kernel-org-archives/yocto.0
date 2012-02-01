Return-Path: <kergoth@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97652E00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 08:14:45 -0800 (PST)
Received: by pbcc11 with SMTP id c11so1518581pbc.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 08:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type;
	bh=ILoCiDTIIekPIVRL4b+ku6cGtubfFIXbmVlM1KGYEq4=;
	b=CcLQ5CdvP6Hqq6sV/s8yDUOpkkGO9kiOt+xaiQ/0IsBAoG9gT5O5Mdm3TUeaf0xemT
	FmQpkCd1BQvPyKrUtwoFDAppyscDQFMOmaFO2uPG7+yzikBHDpj0RZAwPg+fTVFRTyf8
	c1kBdd4Dxi0hwGLocRThGKbyLsi4Gjjo5/rJo=
Received: by 10.68.231.10 with SMTP id tc10mr54795605pbc.91.1328112884982;
	Wed, 01 Feb 2012 08:14:44 -0800 (PST)
Received: from frey-2.local (ip24-251-167-38.ph.ph.cox.net. [24.251.167.38])
	by mx.google.com with ESMTPS id x6sm35769878pbf.7.2012.02.01.08.14.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Feb 2012 08:14:43 -0800 (PST)
Date: Wed, 1 Feb 2012 09:14:40 -0700
From: Christopher Larson <kergoth@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Message-ID: <066604D600794FD2A2BCE463476DF722@gmail.com>
In-Reply-To: <1328111395.2628.32.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
	<1328078233.2628.4.camel@babel.joshhome>
	<1328111395.2628.32.camel@babel.joshhome>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: creating global variables in a recipes
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
X-List-Received-Date: Wed, 01 Feb 2012 16:14:45 -0000
Content-Type: multipart/alternative; boundary="4f2964f0_74b0dc51_a5a"

--4f2964f0_74b0dc51_a5a
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Nope. Recipes cannot modify the metadata of other recipes or the configuration metadata, ever. In particular cases, we emit content to tmpdir and read it back in elsewhere, but in general you should just not do what you're trying to do, and find a better solution.

-- 
Christopher Larson


On Wednesday, February 1, 2012 at 8:49 AM, Joshua Immanuel wrote:

> Hello all,
> 
> On Wed, 2012-02-01 at 12:07 +0530, Joshua Immanuel wrote:
> > > At present in my custom image recipe I've added the following
> > > lines
> > > 
> > > SOME_VARIABLE = "Blah"
> > > do_bootimg[depends] += "base-files:do_install"
> > > 
> > > But the contents of ${SOME_VARIABLE} is not available in the
> > > 'base-files' recipe. Even
> > > 
> > > export SOME_VARIABLE = "Blah"
> > > 
> > > doesn't solve the problem. 
> > > 
> > 
> > 
> > $ bitbake custom-image -c devshell
> > 
> > In the above devshell I can find the contents of ${SOME_VARIABLE}
> > available but the content of it is empty in 'base-files' recipe. 
> > 
> 
> 
> In other words, I need to define global variables in a package which can
> be used across multiple packages. At present the only option I have is
> to export the variable in build/conf/local.conf. IMHO, this doesn't feel
> like a proper solution (as the variable is my layer specific). Moreover,
> I can't change the value of it in one package to be used in other
> package(s).
> 
> Is there any other way to do this? Please guide me.
> 
> Regards
> Joshua
> -- 
> Joshua Immanuel
> HiPro IT Solutions Private Limited
> http://hipro.co.in
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org (mailto:yocto@yoctoproject.org)
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 



--4f2964f0_74b0dc51_a5a
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div style=3D=22font-family: Helvetica; font-size: 13px; =
=22>Nope. Recipes cannot modify the metadata of other recipes or the conf=
iguration metadata, ever. In particular cases, we emit content to tmpdir =
and read it back in elsewhere, but in general you should just not do what=
 you're trying to do, and find a better solution.<br></div>
                <div><div><br></div><div>--&nbsp;</div><div>Christopher L=
arson</div><div><br></div></div>
                =20
                <p style=3D=22color: =23A0A0A8;=22>On Wednesday, =46ebrua=
ry 1, 2012 at 8:49 AM, Joshua Immanuel wrote:</p>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div><div>Hello all,</div><div><br></div><=
div>On Wed, 2012-02-01 at 12:07 +0530, Joshua Immanuel wrote:</div><block=
quote type=3D=22cite=22><div><blockquote type=3D=22cite=22><div><div>At p=
resent in my custom image recipe I've added the following</div><div>lines=
</div><div>        </div><div>        SOME=5FVARIABLE =3D =22Blah=22</div=
><div>        do=5Fbootimg=5Bdepends=5D +=3D =22base-files:do=5Finstall=22=
</div><div>        </div><div>But the contents of =24=7BSOME=5FVARIABLE=7D=
 is not available in the</div><div>'base-files' recipe. Even</div><div><b=
r></div><div>        export SOME=5FVARIABLE =3D =22Blah=22</div><div>    =
    </div><div>doesn't solve the problem. </div></div></blockquote><div><=
br></div><div>        =24 bitbake custom-image -c devshell</div><div><br>=
</div><div>In the above devshell I can find the contents of =24=7BSOME=5F=
VARIABLE=7D</div><div>available but the content of it is empty in 'base-f=
iles' recipe. </div></div></blockquote><div><br></div><div>In other words=
, I need to define global variables in a package which can</div><div>be u=
sed across multiple packages. At present the only option I have is</div><=
div>to export the variable in build/conf/local.conf. IMHO, this doesn't f=
eel</div><div>like a proper solution (as the variable is my layer specifi=
c). Moreover,</div><div>I can't change the value of it in one package to =
be used in other</div><div>package(s).</div><div><br></div><div>Is there =
any other way to do this=3F Please guide me.</div><div><br></div><div>Reg=
ards</div><div>Joshua</div><div>-- </div><div>Joshua Immanuel</div><div>H=
iPro IT Solutions Private Limited</div><div><a href=3D=22http://hipro.co.=
in=22>http://hipro.co.in</a></div></div><div><div>=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F</div><div>yocto mailing list</=
div><div><a href=3D=22mailto:yocto=40yoctoproject.org=22>yocto=40yoctopro=
ject.org</a></div><div><a href=3D=22https://lists.yoctoproject.org/listin=
fo/yocto=22>https://lists.yoctoproject.org/listinfo/yocto</a></div></div>=
</div></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    <br>
                </div>
            

--4f2964f0_74b0dc51_a5a--
