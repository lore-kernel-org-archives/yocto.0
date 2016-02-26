Return-Path: <kubiznak.petr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD889E00DA6; Fri, 26 Feb 2016 09:56:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kubiznak.petr[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EEFE00D16
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 09:56:55 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id y8so43019708igp.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 09:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=oG9sQ+ro+XWyHx1Z4INR48yb4DgP2jHLjbpqF5QH7uc=;
	b=a+jHpK6xDd8vdbyDtZEd+NqqDZYcwpcYayFaMSbHL3G3rSbSmZ4iKa7Ee6aCYosHem
	i676PyzBBK1dpcviHNRrinpvMlUigZGBi8ESK7n+w3No50zdRCSrZi4IRAPEvsGR0M1b
	5AUN259USL/YjTxwIBa2iQYBZdXjmE9cF7D9SHCG+Kem+zyZKSiFEBWF4S6PYgYrKu/Z
	2YtaWlsYAMa++k5vjFRQlw/VPBPVWzv9jOLsL2qWJq4uDrKIbt+JbO/hDNeL8FOz7WqO
	H1lh++2stH9OUbWQYkV8ptKNQYG4airxkDf7OWvtL8uECn2XMb27TM/dpRoafaF4YVMX
	OmqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oG9sQ+ro+XWyHx1Z4INR48yb4DgP2jHLjbpqF5QH7uc=;
	b=KKDUfQfktEyEvn7GdA2LVgQ6xRLK1O+BtFqbA9OHnt6FTjDTzldw61k16kJZatcbV1
	qqHLGPqpT+lJTe7bOzSjDdS8hwiAVa1fUutshjbuQ+TQMH5CGn5DPN5ssok0+DIeTqrJ
	gMaAOme0vfu0rli9m0eWjbAl/kVGpNbIVyt8DZ26P4YzTrJ3I0T3NFyXrf25Q62KDXhc
	+M/kp4c3NnmgMjYsoGybKuOKjQe109caFo7KsPPD/X0RnQCpeM+0wKSp6E0N2dGUGsO/
	VuYViuwXMi0OGhWkz84ksFb7EU++LEcopji9EyZOJt3vZlxW9l8JzpLqbc6utoaYIQgz
	8DWQ==
X-Gm-Message-State: AD7BkJI1vtoMNaVe4w5MErTOkklBLMi+8TdQsrCzaD2xhy+eyZNz3ZqB7y55N8u9V3KfebERV2Mulw7H9cl03Q==
X-Received: by 10.50.150.97 with SMTP id uh1mr3963659igb.39.1456509415060;
	Fri, 26 Feb 2016 09:56:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.113.29 with HTTP; Fri, 26 Feb 2016 09:56:35 -0800 (PST)
From: =?UTF-8?B?UGV0ciBLdWJpesWIw6Fr?= <kubiznak.petr@gmail.com>
Date: Fri, 26 Feb 2016 18:56:35 +0100
Message-ID: <CAD+X0UQFHqgJTi-A3aOC7dD_Lb6n6Yz9aen6yA4OdBVHvxpCYw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Changing file group from an image recipe
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
X-List-Received-Date: Fri, 26 Feb 2016 17:56:59 -0000
Content-Type: multipart/alternative; boundary=001a1137f7144bf969052cb006ca

--001a1137f7144bf969052cb006ca
Content-Type: text/plain; charset=UTF-8

In dizzy, I have a problem with changing a file group from an image recipe.
I create a user admin from an application recipe, say app.bb:
...
inherit pkgconfig cmake update-rc.d useradd
USERADD_PACKAGES = "${PN}"
USERADD_PARAM_${PN} = "admin"
...

Creating the user works fine. Now I need to grant the admin user rights to
reboot the system. I tested I need to change the group ownership of
/sbin/halt.sysvinit and move "/sbin/reboot" from /etc/busybox.links.nosuid
to /etc/busybox.links.suid. So I do the following in the image recipe, say
myimage.bb:
...
inherit core-image
ROOTFS_POSTPROCESS_COMMAND += "set_admin_rights;"
set_admin_rights () {
  # admin needs to be able to reboot the system
  echo /sbin/reboot >> ${IMAGE_ROOTFS}/${sysconfdir}/busybox.links.suid
  sed -i '/\/sbin\/reboot/d'
${IMAGE_ROOTFS}/${sysconfdir}/busybox.links.nosuid
  chgrp admin ${IMAGE_ROOTFS}/sbin/halt.sysvinit
}

Anyway, this does not work, and I get the following output during bitbaking:
WARNING: log_check: warning: group admin does not exist - using root

It looks like the myimage.bb recipe does not know about the created admin
user, even though it is known in app.bb and changing some files' group
locally in that recipe works as expected.

Can someone please suggest how to properly change the group, or how to
achieve required functionality more elegantly?

Thanks, Petr

--001a1137f7144bf969052cb006ca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In dizzy, I have a problem with changing a file group=
 from an image recipe. I create a user admin from an application recipe, sa=
y <a href=3D"http://app.bb">app.bb</a>:<br>...<br>inherit pkgconfig cmake u=
pdate-rc.d useradd<br>USERADD_PACKAGES =3D &quot;${PN}&quot;<br>USERADD_PAR=
AM_${PN} =3D &quot;admin&quot;<br>...<br><br></div>Creating the user works =
fine. Now I need to grant the admin user rights to reboot the system. I tes=
ted I need to change the group ownership of /sbin/halt.sysvinit and move &q=
uot;/sbin/reboot&quot; from /etc/busybox.links.nosuid to /etc/busybox.links=
.suid. So I do the following in the image recipe, say <a href=3D"http://myi=
mage.bb">myimage.bb</a>:<br>...<br><div><div>inherit core-image<br>ROOTFS_P=
OSTPROCESS_COMMAND +=3D &quot;set_admin_rights;&quot;<br>set_admin_rights (=
) {<br>=C2=A0 # admin needs to be able to reboot the system<br>=C2=A0 echo =
/sbin/reboot &gt;&gt; ${IMAGE_ROOTFS}/${sysconfdir}/busybox.links.suid<br>=
=C2=A0 sed -i &#39;/\/sbin\/reboot/d&#39; ${IMAGE_ROOTFS}/${sysconfdir}/bus=
ybox.links.nosuid<br>=C2=A0 chgrp admin ${IMAGE_ROOTFS}/sbin/halt.sysvinit<=
br>}<br><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"l=
tr"><div>Anyway, this does not work, and I get the following output during =
bitbaking:<br>WARNING: log_check: warning: group admin does not exist - usi=
ng root<br><br></div><div>It looks like the <a href=3D"http://myimage.bb">m=
yimage.bb</a> recipe does not know about the created admin user, even thoug=
h it is known in <a href=3D"http://app.bb">app.bb</a> and changing some fil=
es&#39; group locally in that recipe works as expected.<br><br></div><div>C=
an someone please suggest how to properly change the group, or how to achie=
ve required functionality more elegantly?<br><br></div><div>Thanks, Petr</d=
iv><br></div></div></div>
</div></div></div>

--001a1137f7144bf969052cb006ca--
