Subject: loading huawei_cdc_ncm #kernel
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Nov 2020 04:10:52 -0800
Message-ID: <WtZt.1605701452642310356.FF7i@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Lk5JyBdpiUiM6t2L0kdw"

--Lk5JyBdpiUiM6t2L0kdw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'd li to include as a kernel module the huawei_cdc_ncm.c file and autoloa=
ded as a kernel object.

I did this in the main recipie file, but it's not enogh:

KERNEL_MODULE_AUTOLOAD +=3D "cdc_ncm.ko"

I guess I should have a bb file for the huawei_cdc_ncm.c, but I didnt find=
 any on the net.
Could you please help me?

Thanks

Zolee

--Lk5JyBdpiUiM6t2L0kdw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'd li to include as a kernel module the huawei_cdc_ncm.c fi=
le and autoloaded as a kernel object.<br /><br />I did this in the main rec=
ipie file, but it's not enogh:<br /><br />KERNEL_MODULE_AUTOLOAD +=3D "cdc_=
ncm.ko"<br /><br />I guess I should have a bb file for the huawei_cdc_ncm.c=
, but I didnt find any on the net.<br />Could you please help me?<br /><br =
/>Thanks<br /><br />Zolee

--Lk5JyBdpiUiM6t2L0kdw--
