Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6A2EE00C43; Thu, 24 Sep 2015 07:16:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE16E00927
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 07:16:43 -0700 (PDT)
Received: by ykft14 with SMTP id t14so81661640ykf.0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 07:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Ar3srolPAUJWxC9dU4rEZDYh/9gHstQBixkPH4OkMYo=;
	b=cc2/NmK1NK6unjbA8jfEnNPrWGeSezWWGa41ZLl1Em4D4L1F2vdBdsxD0GgnA7/806
	K61nl9sBqNwpMkQE5hnBVh+ti+Yua4Gk5re1G/J57q8U+ACDSaIuG25EmQUbNgzUjjVI
	LULZ2e04MIlQdJdCkf90jx/U1W3/s08wHvCq/7IGiV1J/SGwEd9+uA88J6ojtCqwJrg6
	JiP+0nZ/N5w9YljxvLFnpzlAResHXHjtrfFkNYP/vo3lwg0Cz1LIP0NtbNhI26C3DGoh
	EyB+IPN3VCmN+7Z9YAxJvTbC6QUmYqSEaghgq81q3ZmqgXY6fpCOpgxz4d7tcAlLKqr2
	oxNQ==
MIME-Version: 1.0
X-Received: by 10.170.88.84 with SMTP id f81mr31441985yka.78.1443104202731;
	Thu, 24 Sep 2015 07:16:42 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Thu, 24 Sep 2015 07:16:42 -0700 (PDT)
In-Reply-To: <560401bd.46256b0a.11836.2eefSMTPIN_ADDED_BROKEN@mx.google.com>
References: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAF3SDA7SE==bdZO45njNYnbtViyJ1JTH+AKofNM3+brKdW2iAA@mail.gmail.com>
	<560401bd.46256b0a.11836.2eefSMTPIN_ADDED_BROKEN@mx.google.com>
Date: Thu, 24 Sep 2015 11:16:42 -0300
Message-ID: <CAF3SDA4j6h=5btgBtVVdxwFwR+eT+SdtmYXk7Wd9mrXk9WyL5g@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: andy.pont@sdcsystems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting root password
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
X-List-Received-Date: Thu, 24 Sep 2015 14:16:44 -0000
Content-Type: multipart/alternative; boundary=001a113a7fcc60bc5b05207ee1ef

--001a113a7fcc60bc5b05207ee1ef
Content-Type: text/plain; charset=UTF-8

My image .class file has includes a lot of recipes that I wrote for
specific reasons so it will not work as it is for you without that recipes,
instead here is the minimal you may need to get this working. I use a class
file because I have lot of images differing in little things, like which
kernel modules are auto loaded. So for your case I think this simple recipe
would suffice. If you want you can save this as .class file and import from
other images as I do.

http://pastebin.com/raw.php?i=1qds5hKF

Regards,
- dhs

2015-09-24 10:59 GMT-03:00 Andy Pont <andy.pont@sdcsystems.com>:

> Hi Daniel,
>
> > I didn't know about this EXTRA_USERS_PARAMS. What I do is adding this
> function to
> > my image.
> > # This function sets the password for root based on ROOT_PASSWD variable
> > set_root_password () {
> >         local p=$(openssl passwd -1 -salt "My salt" "${ROOT_PASSWD}")
> >        sed -e "s/root:[^:]*:/root:${p}:/" -i ${IMAGE_ROOTFS}/etc/shadow
> > }
> > And append it to ROOTFS_POSTPROCESS_COMMAND:
> > ROOTFS_POSTPROCESS_COMMAND += "set_root_password; "
> > I did all this in a class file which I import on all my images,
>
> As your method works and the EXTRA_USERS_PARAMS appears not to be doing
> could you send me your class file to save me having to reinvent the wheel?
>
> > About your problem, can you get the "usermod" error from log.do_rootfs
>
> The end of the log.do_roots file just contains the following:
>
> NOTE: Executing set_user_group ...
> DEBUG: Executing shell function set_user_group
> NOTE: Performing usermod with [-R
> XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/1.0-r0/rootfs
> -P Hkw6rBJlcfhvM root] and 1 times of retry
> Server refused shutdown.  Remaining client fds: 2
> Client pids: 3878 16245
> Server will shut down after all clients exit.
> WARNING: usermod command did not succeed. Retrying...
> ERROR: Tried running usermod command 1 times without success, giving up
> WARNING:
> XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/1.0-r0/temp/run.set_user_group.3878:1
> exit 1 from
>   exit 1
> DEBUG: Python function do_rootfs finished
>
> Thanks,
>
> Andy.
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113a7fcc60bc5b05207ee1ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My image .class file has includes a lot of recipes th=
at I wrote for specific reasons so it will not work as it is for you withou=
t that recipes, instead here is the minimal you may need to get this workin=
g. I use a class file because I have lot of images differing in little thin=
gs, like which kernel modules are auto loaded. So for your case I think thi=
s simple recipe would suffice. If you want you can save this as .class file=
 and import from other images as I do.<br><br><a href=3D"http://pastebin.co=
m/raw.php?i=3D1qds5hKF">http://pastebin.com/raw.php?i=3D1qds5hKF</a><br><br=
></div><div>Regards,<br></div><div>- dhs<br></div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2015-09-24 10:59 GMT-03:00 Andy Pont=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:andy.pont@sdcsystems.com" target=
=3D"_blank">andy.pont@sdcsystems.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Daniel,<br>
<span class=3D""><br>
&gt; I didn&#39;t know about this EXTRA_USERS_PARAMS. What I do is adding t=
his function to<br>
&gt; my image.<br>
&gt; # This function sets the password for root based on ROOT_PASSWD variab=
le<br>
&gt; set_root_password () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0local p=3D$(openssl passwd -1 -salt &=
quot;My salt&quot; &quot;${ROOT_PASSWD}&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed -e &quot;s/root:[^:]*:/root:${p}:/&quot=
; -i ${IMAGE_ROOTFS}/etc/shadow<br>
&gt; }<br>
&gt; And append it to ROOTFS_POSTPROCESS_COMMAND:<br>
&gt; ROOTFS_POSTPROCESS_COMMAND +=3D &quot;set_root_password; &quot;<br>
&gt; I did all this in a class file which I import on all my images,<br>
<br>
</span>As your method works and the EXTRA_USERS_PARAMS appears not to be do=
ing could you send me your class file to save me having to reinvent the whe=
el?<br>
<span class=3D""><br>
&gt; About your problem, can you get the &quot;usermod&quot; error from log=
.do_rootfs<br>
<br>
</span>The end of the log.do_roots file just contains the following:<br>
<br>
NOTE: Executing set_user_group ...<br>
<span class=3D"">DEBUG: Executing shell function set_user_group<br>
</span>NOTE: Performing usermod with [-R XXXXX/build/tmp/work/intel_core2_3=
2-poky-linux/core-image-minimal-initramfs/1.0-r0/rootfs -P Hkw6rBJlcfhvM ro=
ot] and 1 times of retry<br>
<span class=3D"">Server refused shutdown.=C2=A0 Remaining client fds: 2<br>
Client pids: 3878 16245<br>
Server will shut down after all clients exit.<br>
WARNING: usermod command did not succeed. Retrying...<br>
ERROR: Tried running usermod command 1 times without success, giving up<br>
</span>WARNING: XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-m=
inimal-initramfs/1.0-r0/temp/run.set_user_group.3878:1 exit 1 from<br>
<span class=3D"">=C2=A0 exit 1<br>
DEBUG: Python function do_rootfs finished<br>
<br>
</span>Thanks,<br>
<br>
Andy.<br>
<br>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is no =
try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>

--001a113a7fcc60bc5b05207ee1ef--
