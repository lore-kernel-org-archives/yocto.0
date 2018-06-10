Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D25E02B63; Tue, 12 Jun 2018 11:02:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84020E02AE4
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:38 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SncrfwXaZ; Tue, 12 Jun 2018 20:02:38 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 10 Jun 2018 05:30:03 +0200
Message-Id: <9EEEF203-2371-4CCE-8E70-947330CDB462@emagii.com>
References: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
	<b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
In-Reply-To: <b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfE8korAkwQKsTaD3O6jbOiEJXILMIwl1F9o4MVgEYFPcYf0p0+LKdxr5sWZNHAagbaS6Cd4Yr/zEognMIf5AoxO2s0sw/ss1AV8KrTSOPqOFPJCEEvhA
	5b0uW9oaBYmBl9/AXcCzjoJgcb0sETZ7kT4aQmnnaEnvYlSNnt21YhxJctYq5hu78GZNDR1rq8vOogG02G8QoYnzm0qHCqj2FbA=
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks,

We want most of /etc to be read-only for security reasons,
and the overlayfs will make the whole of /etc writeable.

I tried mount =E2=80=94bind /etc/timezone /persistent/etc/timezone, and it c=
omplained that they were not directories. Bind mounting /etc again will make=
 all of /etc writeable.

Symlinking to /persistent is fine, so the question is what an acceptable met=
hod is to have a simple way of ensuring that a certain file is converted to t=
hat symlink.



Best Regards,
Ulf Samuelsson
+46 722 427 437

10 juni 2018 kl. 01:36 skrev Peter Kjellerstedt <peter.kjellerstedt@axis.com=
>:

>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Ulf Samuelsson
>> Sent: den 9 juni 2018 11:51
>> To: yocto@yoctoproject.org
>> Subject: [yocto] How handle files needing updates in read-only
>> filesystem
>>=20
>> We have a rootfs which is read-only.
>> For files that needs to be updated, like "/etc/localtime"
>> we will create a symbolic link to a partition (/persistent) which
>> is retained between rootfs image updates.
>>=20
>> /etc/localtime -> /persistent/etc/localtime
>>=20
>> The original recipe will generate the real /etc/localtime of course.
>>=20
>> To support the file beeing updated, the following needs to be done in a
>> rootfs postprocess.
>>=20
>> mv   /etc/localtime /update/etc/localtime
>> ln   -sf /persistent/etc/localtime /etc/localtime
>> install -m 0644 /update/etc/localtime /persistent/etc/localtime
>> chown <user>:<group> /persistent/etc/localtime
>>=20
>> The last two commands needs to be executed on the running system,
>> since /persistent is not part of the rootfs.
>>=20
>> To ensure that the file can be updated is an ad-hoc activity for each
>> affected file. It would be better if there was a class where you
>> declare
>> a file to be writeable, and then a post process
>> would move the file to /update (or similar) and create a symbolic link
>>=20
>> SETTINGS ?=3D "/persistent"
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>> inherit writeable
>>=20
>> WRITEABLE =3D "/etc/localtime"
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>>=20
>> This would generate the first two commands for each listed file.
>>=20
>> mv   /etc/localtime /update/etc/localtime
>> ln   -sf ${SETTINGS}/etc/localtime /etc/localtime
>>=20
>> The file would also be added to a file indicating that it may need
>> to be copied to the ${SETTINGS}
>>=20
>> Is it a good solution to modify "populate_volatiles.sh"
>> to support a second file parameter for the f (file) command
>> in the /etc/default/volatiles file?
>>=20
>> Today the file create command looks like:
>> f <mode> <uid> <gid> <filename> <ignored>
>>=20
>> An idea would be to have the following syntax:
>> f <mode> <uid> <gid> <filename> <source>
>>=20
>> If <source> is a valid filepath, then copy this file to <filename>
>> If <source> is not a valid filepath, create <filename> using "touch"
>>=20
>> This would break any build which has a "funny" volatiles file.
>> Otherwise a script called populate_persistent.sh could be
>> created with such an extension.
>>=20
>> Comments?
>>=20
>> BR
>> Ulf Samuelsson
>=20
> Since a  lot of files in /etc typically need to be writable, one way to=20=

> handle this is by using an overlayfs for /etc. That is what we do and=20
> it works very well.
>=20
> An alternative, more along your suggestion, is to use bind mounts. The=20
> advantage of using a bind mount instead of a symbolic link is that it=20
> will look as a normal file.
>=20
> You should look into the volatile-binds recipe and the VOLATILE_BINDS=20
> variable. It is used to handle directories that need to be writable.=20
> It will create systemd service files that copies the non-volatile=20
> directory to the volatile directory (if it does not already exists),=20
> and the bind mounts it back.=20
>=20
> I am not sure volatile-binds works out-of-the-box for files, but I=20
> believe it does. If not, it should not be too hard to modify it so=20
> that it can handle files as well.
>=20
> //Peter
>=20


