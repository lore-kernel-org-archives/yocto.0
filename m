Return-Path: <kergoth@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D7DEE0074A
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 18:07:29 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iadj38 with SMTP id j38so155817iad.35
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2012 18:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type;
	bh=yFYEVXKGIgKX9VJr751oA+E8zLCRMnooan8q/rBbzvY=;
	b=itbW0s+IMuEByCKha81Ziu3XXrMleUQWCD65LZmjS4ZvoqwsQQk1dlKrylRkTgqQnU
	AocQflw3fuvl3Svlep7dZy7HgDlPW+SbWjJdR6iIZkml2NtuwA8T8+AThIGknUyLkuCJ
	XtU7gXczf9OPIOfVW/1bMi/98RJk6dlvLPomI=
Received: by 10.50.85.199 with SMTP id j7mr13636igz.25.1326161248578;
	Mon, 09 Jan 2012 18:07:28 -0800 (PST)
Received: from frey (ip24-251-167-38.ph.ph.cox.net. [24.251.167.38])
	by mx.google.com with ESMTPS id r5sm112427797igl.3.2012.01.09.18.07.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Jan 2012 18:07:27 -0800 (PST)
Date: Mon, 9 Jan 2012 19:07:25 -0700
From: Christopher Larson <kergoth@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Message-ID: <2F4E813B930D429F95E9E2DCFB2C36A2@gmail.com>
In-Reply-To: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
References: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: understanding what's in an image
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
X-List-Received-Date: Tue, 10 Jan 2012 02:07:29 -0000
Content-Type: multipart/alternative; boundary="4f0b9d5d_2eb141f2_e9f3"

--4f0b9d5d_2eb141f2_e9f3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Read layer.conf in each layer. See the BBFILES variable.
-- 
Christopher Larson


On Monday, January 9, 2012 at 5:51 PM, James Abernathy wrote:

> I'm trying to understand how bitbake parses the poky directory tree a little better. 
> 
> The best I can figure all .bb files are NOT included. Just some of them are. I'm guessing that the .bb in the meta/recipe-sato named core-image-sato.bb is the one that is used to start the parsing if bitbake core-image-sato is executed.
> I originally thought all subdirectories of a path included in BBLAYER were parsed looking for .bb files, but now I know that is not true, but not sure why.
> 
> For example, it does not appear that webkit is included in the core-image-sato even though the recipe-sato directory includes the webkit subdirectory with it's recipe. What would be the proper way of adding the webkit to core-image-sato??
> 
> Jim A
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org (mailto:yocto@yoctoproject.org)
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 



--4f0b9d5d_2eb141f2_e9f3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div>
                    Read layer.conf in each layer. See the BB=46ILES vari=
able.</div><div><div>--&nbsp;</div><div>Christopher Larson</div><div><br>=
</div></div>
                =20
                <p style=3D=22color: =23A0A0A8;=22>On Monday, January 9, =
2012 at 5:51 PM, James Abernathy wrote:</p>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div><div>I'm trying to understand how bit=
bake parses the poky directory tree a little better.  </div><div><br></di=
v><div>The best I can figure all .bb files are NOT included. Just some of=
 them are.  I'm guessing that the .bb in the meta/recipe-sato named core-=
image-sato.bb is the one that is used to start the parsing if bitbake cor=
e-image-sato is executed.</div><div>I originally thought all subdirectori=
es of a path included in BBLAYER were parsed looking for .bb files, but n=
ow I know that is not true, but not sure why.</div><div><br></div><div>=46=
or example, it does not appear that webkit is included in the core-image-=
sato even though the recipe-sato directory includes the webkit subdirecto=
ry with it's recipe.  What would be the proper way of adding the webkit t=
o core-image-sato=3F=3F</div><div><br></div><div>Jim A</div><div><br></di=
v><div>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
</div><div>yocto mailing list</div><div><a href=3D=22mailto:yocto=40yocto=
project.org=22>yocto=40yoctoproject.org</a></div><div><a href=3D=22https:=
//lists.yoctoproject.org/listinfo/yocto=22>https://lists.yoctoproject.org=
/listinfo/yocto</a></div></div></div></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    <br>
                </div>
            

--4f0b9d5d_2eb141f2_e9f3--
