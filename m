Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.5907.1613470485442267400
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 02:14:45 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: ECQrKW29B5naIvtnNbWqjzf8vhX6J/VSmlgAa3H09jtHoY7FdAOAnSTxjNIs5bLf2FoPM9SaaQ
 Q2iPzG8WYxcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="182985444"
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; 
   d="scan'208";a="182985444"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2021 02:14:43 -0800
IronPort-SDR: HrQ3hpCRPv7guM/gY1xsp/Ot6pkpauZXOh3Wc/ZuARpF73jqG0tXcX4B9EIUlyFBs8PDRiSlqd
 j89Z0IcD+EXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; 
   d="scan'208";a="377510568"
Received: from kmsmsx601.gar.corp.intel.com ([172.21.219.141])
  by orsmga002.jf.intel.com with ESMTP; 16 Feb 2021 02:14:42 -0800
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 kmsmsx601.gar.corp.intel.com (172.21.219.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 18:14:41 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2106.002;
 Tue, 16 Feb 2021 18:14:41 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Andrei Gherzan <andrei@gherzan.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: Re: [yocto] [meta-zephy][PATCH 13/14] zephyr-flash-pyocd.bbclass: Implement configurable probe IDs to program
Thread-Topic: [yocto] [meta-zephy][PATCH 13/14] zephyr-flash-pyocd.bbclass:
 Implement configurable probe IDs to program
Thread-Index: AQHXA40bWT+kT96wjkSOKnvUA2tMj6pajy7w
Date: Tue, 16 Feb 2021 10:14:41 +0000
Message-ID: <821237702e094666bca3ed61b1f6d455@intel.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
 <20210215112003.2025053-13-andrei@gherzan.com>
In-Reply-To: <20210215112003.2025053-13-andrei@gherzan.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Andrei for adding support for v2.5-rc4 and re-structuring.

Could you fix a whitespace in this patch ? Other patches looks good to me.

Later I will fix subject-prefix meta-zephyr typo in README.=20

Regards,
Naveen

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Andrei Gherzan
> Sent: Monday, February 15, 2021 7:20 PM
> To: yocto@lists.yoctoproject.org
> Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
> Subject: [yocto] [meta-zephy][PATCH 13/14] zephyr-flash-pyocd.bbclass:
> Implement configurable probe IDs to program
>=20
> From: Andrei Gherzan <andrei.gherzan@huawei.com>
>=20
> Implement logic to configure what probes to program based on the
> PYOCD_FLASH_IDS variable:
> 1. by default program all attached probes 2. change default behaviour by
> listing the probe IDs to flash
>=20
> CONNECT_TIMEOUT_SECONDS was also renamed to maintain consistency
> with the PYOCD_FLASH_IDS variable.
>=20
> One can query the IDs using `pyocd list`.
>=20
> The value of PYOCD_FLASH_IDS can also be injected into the datastore usin=
g
> BB_ENV_EXTRAWHITE.
>=20
> Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
> ---
>  README.txt                         |  9 +++++
>  classes/zephyr-flash-pyocd.bbclass | 57 ++++++++++++++++++++----------
>  2 files changed, 48 insertions(+), 18 deletions(-)
>=20
> diff --git a/README.txt b/README.txt
> index bda872b..ce5338b 100644
> --- a/README.txt
> +++ b/README.txt
> @@ -67,6 +67,15 @@ dfu-util and/or pyocd need to be installed in your
> system. If you observe  permission errors or the flashing process seem to
> hang, follow those instructions:
>  https://github.com/pyocd/pyOCD/tree/master/udev
>=20
> +By default, pyocd tries to flash all the attached probes. This
> +behaviour can be customised by defining the PYOCD_FLASH_IDS variable as
> +a space-separated list of IDs. Once that is set, the tool will only try
> +to program these IDs. You can query for the IDs by running `pyocd list`
> +on your host while having the probes attached. Besides setting this
> +variable through the build's configuration or metadata, you can also inj=
ect
> its value from command line with something like:
> +
> +    $ PYOCD_FLASH_IDS=3D'<ID1> <ID2> <ID3>'
> + BB_ENV_EXTRAWHITE=3D"$BB_ENV_EXTRAWHITE PYOCD_FLASH_IDS"
> bitbake
> + <TARGET> -c flash_usb
> +
>  Building and Running Zephyr Tests
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  Presently only toolchains for ARM, x86, IAMCU and Nios2 are supported.
> diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-
> pyocd.bbclass
> index 4d24e6a..7e1cec5 100644
> --- a/classes/zephyr-flash-pyocd.bbclass
> +++ b/classes/zephyr-flash-pyocd.bbclass
> @@ -1,4 +1,5 @@
> -CONNECT_TIMEOUT_SECONDS ?=3D "30"
> +PYOCD_CONNECT_TIMEOUT_SECONDS ?=3D "30"
> +PYOCD_FLASH_IDS ?=3D "all"
>=20
>  python do_flash_usb() {
>      try:
> @@ -7,26 +8,46 @@ python do_flash_usb() {
>      except ImportError:
>          bb.fatal("Flashing with pyocd needs the relevant python package.=
 Make
> sure your host provides it or consult your distribution packages for how =
to
> install this prerequisite.")
>=20
> -    timeout =3D int(d.getVar('CONNECT_TIMEOUT_SECONDS'))
> +    try:
> +        timeout =3D int(d.getVar('PYOCD_CONNECT_TIMEOUT_SECONDS'))
> +    except ValueError:
> +        bb.fatal(f"PYOCD_CONNECT_TIMEOUT_SECONDS was set to an invalid
> + value: {d.getVar('PYOCD_CONNECT_TIMEOUT_SECONDS')}.")
>      image =3D f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.elf"
> -    bb.plain(f"Attempting to flash {image} to board {d.getVar('BOARD')}"=
)
> +    ids =3D d.getVar('PYOCD_FLASH_IDS')
> +
> +    # Compute the list of IDs to program
> +    if ids =3D=3D 'all':
> +        ids =3D []
> +        for probe in
> ConnectHelper.get_all_connected_probes(blocking=3DFalse):
> +            ids.append(probe.unique_id)
> +        if not ids:
> +            bb.fatal("No probe detected. Make sure your target is connec=
ted.")
> +    else:
> +        ids =3D ids.split()
> +        if not ids:
> +            bb.fatal("No probe requested for programming. Make sure
> + PYOCD_FLASH_IDS is set.")
>=20
> -    # Try to connect to a probe with a timeout
> -    now =3D 0
> -    step =3D 3
> -    while True:
> -        session =3D ConnectHelper.session_with_chosen_probe(blocking=3DF=
alse,
> return_first=3DTrue)
> -        if session:
> -            break
> -        if now >=3D timeout:
> -            bb.fatal("Timeout while trying to connect to a probe. Make s=
ure the
> target device is connected and the udev is configured accordingly. See
> <https://github.com/mbedmicro/pyOCD/tree/master/udev> for help.")
> -        bb.warn("Can't connect to the probe. Retrying in %d seconds..." =
% step)
> -        time.sleep(step)
> -        now +=3D step
> +    # Program each ID
> +    for id in ids:
> +        bb.plain(f"Attempting to flash {os.path.basename(image)} to
> + board {d.getVar('BOARD')} [{id}]")
>=20
> -    with session:
> -        FileProgrammer(session).program(image)
> -        session.board.target.reset()
> +        # Try to connect to a probe with a timeout
> +        now =3D 0
> +        step =3D 3
> +        while True:
> +            session =3D
> ConnectHelper.session_with_chosen_probe(blocking=3DFalse,
> return_first=3DTrue, unique_id=3Did)
> +            if session:
> +                break
> +            if now >=3D timeout:
> +                bb.fatal(f"Timeout while trying to connect to probe ID: =
{id}. Make
> sure the target device is connected and the udev is configured accordingl=
y.
> See <https://github.com/mbedmicro/pyOCD/tree/master/udev> for help.")
> +            bb.warn(f"Can't connect to the probe ID: {id}. Retrying in {=
step}
> seconds...")
> +            time.sleep(step)
> +            now +=3D step
> +
> +        # Program the sepected probe
> +        with session:
> +            FileProgrammer(session).program(image)
> +            session.board.target.reset()
>  }
>=20
>  addtask do_flash_usb after do_deploy
> --
> 2.30.1

