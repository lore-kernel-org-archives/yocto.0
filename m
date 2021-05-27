Subject: Error while updating sources using "$ opkg update". [ opkg_verify_gpg_signature: GPG signature checking not supported ] [ pkg_src_verify: Signature verification failed for *. ] #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: tokuchiprime@protonmail.com
X-Originating-Location: Mumbai, Maharashtra, IN (111.119.213.6)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 May 2021 10:42:31 -0700
Message-ID: <fHw6.1622137351448374626.zCzB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rb9it39HAXJZjWow5rwu"

--rb9it39HAXJZjWow5rwu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone.

I am trying to setup a Package Feed with signed ipk packages. For this, I =
first set up the key pair on my build host.

This is the result of "$ gpg --list-keys" :

/home/<username>/.gnupg/pubring.kbx
--------------------------------
pub=C2=A0 =C2=A0rsa3072 2021-05-26 [SC] [expires: 2023-05-26]
<40-char-hex-key-id>
uid=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ultimate] <user-id> <email-id=
>
sub=C2=A0 =C2=A0rsa3072 2021-05-26 [E] [expires: 2023-05-26]

I added the following to my local.conf :

# For generating signed packages
INHERIT +=3D "sign_ipk"
IPK_GPG_NAME =3D "<last-8-digits-of-key-id>"
IPK_GPG_PASSPHRASE_FILE =3D "/home/<username>/passphrase.txt"
INHERIT +=3D "sign_package_feed"
PACKAGE_FEED_GPG_NAME =3D "<last-8-digits-of-key-id>"
PACKAGE_FEED_GPG_PASSPHRASE_FILE =3D "/home/<username>/passphrase.txt"

Burnt the new image onto the SD Card and booted up. At this point, $ opkg =
update fails with the following error:

Downloading http://192.168.0.8/rpi_packages/all/Packages.gz.
Downloading http://192.168.0.8/rpi_packages/all/Packages.asc.
Downloading http://192.168.0.8/rpi_packages/cortexa7t2hf-neon-vfpv4/Packag=
es.gz.
Downloading http://192.168.0.8/rpi_packages/cortexa7t2hf-neon-vfpv4/Packag=
es.asc.
Downloading http://192.168.0.8/rpi_packages/raspberrypi3/Packages.gz.
Downloading http://192.168.0.8/rpi_packages/raspberrypi3/Packages.asc.
Collected errors:
* opkg_verify_gpg_signature: GPG signature checking not supported
* pkg_src_verify: Signature verification failed for all.
* opkg_verify_gpg_signature: GPG signature checking not supported
* pkg_src_verify: Signature verification failed for cortexa7t2hf-neon-vfpv=
4.
* opkg_verify_gpg_signature: GPG signature checking not supported
* pkg_src_verify: Signature verification failed for raspberrypi3.

The /etc/pki/packagefeed-gpg directory has PACKAGEFEED-GPG-KEY-b2qt-dunfel=
l in it.

At first gnupg wasn't installed on the target, so I added it.

Running "$ gpg --list-keys" outputs:

gpg: directory '/home/root/.gnupg' created
gpg: keybox '/home/root/.gnupg/pubring.kbx' created
gpg: /home/root/.gnupg/trustdb.gpg: trustdb created

I imported /etc/pki/packagefeed-gpg/PACKAGEFEED-GPG-KEY-b2qt-dunfell, afte=
r which "$ gpg --list-keys" shows the public key. But it doesn't solve the =
issue.
Found a question in the mailing list, where the OP used OPKG_KEYRING_KEYS.=
 So I rebuilt the image with OPKG_KEYRING_KEYS =3D "<last-8-digits-of-key-i=
d>", but the result was same as earlier.

If signature verification is disabled then the sources are updated without=
 any error.

Thanks for reading.

--rb9it39HAXJZjWow5rwu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi everyone.</div>
<div>&nbsp;</div>
<div>I am trying to setup a Package Feed with signed ipk packages. For thi=
s, I first set up the key pair on my build host.<br /><br />This is the res=
ult of "$ gpg --list-keys" :</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">/home/&lt;username&gt;/.gnupg/pubring.kbx</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">--------------------------------</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">pub&nbsp; &nbsp;rsa3072 2021-05-26 [SC] [expires: 2023-05-26]</span><=
/div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp; &nbsp; &nbsp; &lt;40-char-hex-key-id&gt;</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">uid&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[ultimate] &lt;user-id&gt=
; &lt;email-id&gt;</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">sub&nbsp; &nbsp;rsa3072 2021-05-26 [E] [expires: 2023-05-26]</span></=
div>
<div>&nbsp;</div>
<div><br />I added the following to my local.conf :</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;"># For generating signed packages</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">INHERIT +=3D "sign_ipk"</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">IPK_GPG_NAME =3D "&lt;last-8-digits-of-key-id&gt;"</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">IPK_GPG_PASSPHRASE_FILE =3D "/home/&lt;username&gt;/passphrase.txt"</=
span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">INHERIT +=3D "sign_package_feed"</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">PACKAGE_FEED_GPG_NAME =3D "&lt;last-8-digits-of-key-id&gt;"</span></d=
iv>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">PACKAGE_FEED_GPG_PASSPHRASE_FILE =3D "/home/&lt;username&gt;/passphra=
se.txt"</span></div>
<div>&nbsp;</div>
<div>Burnt the new image onto the SD Card and booted up. At this point, $ =
opkg update fails with the following error:</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Downloading http://192.168.0.8/rpi_packages/all/Packages.gz.</span></=
div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Downloading http://192.168.0.8/rpi_packages/all/Packages.asc.</span><=
/div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Downloading http://192.168.0.8/rpi_packages/cortexa7t2hf-neon-vfpv4/P=
ackages.gz.</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Downloading http://192.168.0.8/rpi_packages/cortexa7t2hf-neon-vfpv4/P=
ackages.asc.</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Downloading http://192.168.0.8/rpi_packages/raspberrypi3/Packages.gz.=
</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Downloading http://192.168.0.8/rpi_packages/raspberrypi3/Packages.asc=
.</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">Collected errors:</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp;* opkg_verify_gpg_signature: GPG signature checking not support=
ed</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp;* pkg_src_verify: Signature verification failed for all.</span>=
</div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp;* opkg_verify_gpg_signature: GPG signature checking not support=
ed</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp;* pkg_src_verify: Signature verification failed for cortexa7t2h=
f-neon-vfpv4.</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp;* opkg_verify_gpg_signature: GPG signature checking not support=
ed</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">&nbsp;* pkg_src_verify: Signature verification failed for raspberrypi=
3.</span></div>
<div>&nbsp;</div>
<div>The /etc/pki/packagefeed-gpg directory has PACKAGEFEED-GPG-KEY-b2qt-d=
unfell in it.</div>
<div>&nbsp;</div>
<div>At first gnupg wasn't installed on the target, so I added it.</div>
<div>&nbsp;</div>
<div>Running "$ gpg --list-keys" outputs:</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">gpg: directory '/home/root/.gnupg' created</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">gpg: keybox '/home/root/.gnupg/pubring.kbx' created</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 1=
0pt;">gpg: /home/root/.gnupg/trustdb.gpg: trustdb created</span></div>
<div>&nbsp;</div>
<div>I imported /etc/pki/packagefeed-gpg/PACKAGEFEED-GPG-KEY-b2qt-dunfell,=
 after which "$ gpg --list-keys" shows the public key. But it doesn't solve=
 the issue.</div>
<div>Found a question in the mailing list, where the OP used OPKG_KEYRING_=
KEYS. So I rebuilt the image with OPKG_KEYRING_KEYS =3D "&lt;last-8-digits-=
of-key-id&gt;", but the result was same as earlier.<br /><br />If signature=
 verification is disabled then the sources are updated without any error.</=
div>
<div>&nbsp;</div>
<div>Thanks for reading.</div>

--rb9it39HAXJZjWow5rwu--
