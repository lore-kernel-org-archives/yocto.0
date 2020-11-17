Received: from sonic312-25.consmr.mail.gq1.yahoo.com (sonic312-25.consmr.mail.gq1.yahoo.com [98.137.69.206])
 by mx.groups.io with SMTP id smtpd.web11.5002.1605598971576806228
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 23:42:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=TYQvBBCU;
 spf=neutral (domain: yahoo.com, ip: 98.137.69.206, mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1605598971; bh=bdwLuSjudOw7jrU3H1T1lc7Ffj4OzGZOQS10INzgZuQ=; h=To:From:Subject:Date:References:From:Subject; b=TYQvBBCUOAoTrdI6sSd6rHvUHHLhuc35Da+CCwAcXbX8FY3S6SJrSv2uFNmxiiaKlPZCKJtQZuhmiucgq/D81qzvoknLLftIxFXnirGC5NnFaS2+jFLGEzrPKRfficMAc1NRxdKl7Gdts6WSM1ZglQ8zw7FAS/dR2FAgElPqL4vmY+KNicB9mZI7VdOcTvW6AUzMO8CMhfkARrOkLJzG+De8/l0zW1Ej3WClEsiDg64MZZyP2u/kptxz/VN27f14Qc5kMAlA+or9mu5VDZ+vtQeVKAgEE2g4tgb+E0ljGiCi+W8TkmSgjWjnLRpwr7DBRIsD1fxRQ3OCOQMxTFmcYg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1605598971; bh=e6i9VUoKKAd5iTNKUPYpgRDtaluLJXCuxYJf66dogXg=; h=To:From:Subject:Date:From:Subject; b=YZftMbcfpKpPya8YCBNMe1Rl5kZTTJ4ZY9TfGUl63cEye3j0Fk+xldwCPOayonpQ771e0JUjStsqaMHSfBsQhnN8OQ1z8sPBxqDIZNu14HhMg+eLp/GLsMOc/tPidOAsV7PIZj5Y51tq7lMOzIJZwioNJRm7yzB0uqxfFVPATjdEYi2bcR9Lg9+5ANnPF1icaVfvNaeZ+hjHFsGUdmMijsxDun4vuu9BKNHImjpxHaMqJaRHYeuZ/ojqwoQEgc0ltiS2YpQayMNVK4vY+bgPKi0e/6d1QEBrq3K3jYka3QaKQAJCWQFl0k5EE3Qt56xFzp3gzHkhAhQYbSWh72oqTg==
X-YMail-OSG: oNc0h9QVM1nBZjFhC1COpA2Z2rXjwJuHtX5zSpsMpwl29bG4gkoEsSKWsu3swTt
 JvTe7u0SKGC.2D93gAfdoGo9GlBM6g1GPygkj6e220eEWZZrixwny2RIvnEXu08TjiZx.iUW_mFv
 T_iIItbc.2wiC98ocoGXcGAsv4oZ19OO066I9kIBHvUJm_XGznBZv9hqjhGXHYMnWHJvgKooWEqs
 TVu7kV5bbYKDL89t0pxIWR_mzdleVFBlO1FGVoPiwrRregI1QMU9O7976UipSOgzIHkNLqgKaS_8
 x1TV9EMLzoyohJMGgReCiXJdlPaSyQzT9Qamt74l2MmhvdL1ZfNiZh.FTlDifYLWJ2DGnKOyKyxj
 L5OObUJ2N9pt55xdWUf3rRla5UaRgj1UjLcFFpe6V6WBvxtdgIe3BNy5us4eCI3cF1JwWsmRfsFn
 0WvBU5PMpAEi1UFI4uzDDyITJOtS8HriRADQMmyHVOieZRJlTJaV3u8PFYhEktJHg0w7E4Wdip2f
 g7R4fX0s1uuRSJ8jtB6FzBBeZ.GfPYQqzX9.7mhD9lkZczQvO2kWJsMta9GD_5zxmg9iMuNuEn.V
 QSicJocLMreSTlC1lEUVpN4hEd20DI77Rrolp1I2uzXCbdNrqCPSNNqfHoRmYm5Wq0fOzMZo1RVW
 U_tEsbfOTB1ir.w_UdrVF.pm0iYK2cEmBUCAjxTBb9J34nmMrOAoj7fyAL.iXDiAvnoPfX_uvCcS
 cyAhKhio56baRGM5Zykp5kP5NFUOBAkUvSiFYhPD80iJCQSl60A3QFO0v6qtz3JCVmtN9V7HM9Ou
 DbOTEF6lOJKm.gN4ims2H8.KaLZTq1Gz_h.9ueK9LTiDBpM1PqKRezYLKbgQzBiDnPBIVx9wp3h4
 rJ0zl8bYRESv05YzmqA_cu9vGhp49IUpnX72wavTs.78VhPFHIMdt.FXeMBw6sYJ8TdHq6jCFWkv
 Dz1YXdnab21fQVvsGXKjKWROBXV.7jngaxlR_vIJmr5WCyGSQczLIFdAM7QfoK7KG4oFgaxZwQBR
 noxSxZA4uUmyBYVpAK3X6.rRKFhRLGL5u3x2jRFq1AoMsOAhEHbdy0aH1QicOemWS4jD575Q.S3T
 hlLxYO7a5nfr0cSu6Th5RC7kuMdioMbKvrD3uJkJRBwhU8Zf3m6_SmfFIJ8QjA7se7lqGtSxxbJS
 nLXqGvE.eag4h.E4x4IERiA1cHWD203q0j2t2cxFjP0bUpttIjjrsY8Z0XRZkWr9nAPROEB7Fbqs
 4S4GJX2GHrprRfhTWaeFg4I2FoO6X9YDPHUxi9HkkS0T1It2eF4KdED5sKQzQXNjomE7DPdI23Dx
 8_CqEye0yHYJRhtvTO2WmzFvWLmcfgvjL4DGa5V6UwEotSqpk7iplDZ1FI7eh_Mmf7FfX.VI0l8x
 2qG1mOL_CkZ4uS6NjniZ3mKsTcFPxPaQcLYkhexj.2vKbTAyaMobqn6dTKZprSkE3M8muh9gWwlx
 8JfecN1zbVmO4YItryL24SE.sy8grB3vPiFSIFo6BrC0lQ69ADftHz_Uei9wtHPsvkUaoQbjk7VP
 4OYkVOklbzNQIkhTfwt070l6UT26tx.83bQrjud1Vik5EXUN7PO_9q4bjNWjcRgFb5HzyoRTOMjv
 dA6ysRREQVpZEZ1UDoMGV_OsOWDigWD3ztrjUcDcUQkCT4Ay7NvdNOUeyBKDF6DcayoC8jqZH_Mt
 iwK6PQHxPi5AjXzzWmGgikZqR_QRTvm1nRKXKgFGOfgp___MhwVXZx4XjbLW6c3CIsE8m3Z_Nml_
 CkiWprGWdTndGJkGPsuueyavlAhLuh6G_cvOgC_COYgqpzDj08pLvJBIDM82qW1BFi4ikEn91lmy
 k9HRsmbBLSifib4cCpfVo2yUFSylQycqG_ougWpfQ2MgbeRNos9ueBzi52R8z_xINIRMfecCUbVQ
 aLvrnMESs46D2pzF.S_9pkYW6iBWQSxRnBxAHL.a4R8XuzaWZzpc11QAVPl0q1vkO.5Sk1QKEvV_
 VPn_ZVCMCITB9hKa9f4bOK07SfhiT9osKjCuvkYIPCrGd5T7SSxFSpUFIDQA.Kd4wyrpEjiAlFFO
 yG3kHY_3NpGahrYbqdQf3iS49lnmBWp5VZIUfrGhtlfUlWpPWkS.QJqmC68iFMho3NoICYTuQxA_
 eaO8UcchHVKyYfqEjZIm1R2cvkhUZvIrlquLCuCVWc_Z3oylKoqNMrCot2rZkfqKJ3MVpcUMVJ2s
 E635yoSWfqmx8QXObk6iga_J2ft6cvookS0CyfMxq2vKqEjj1LBiCoqjpFloRHeMahyZs3g2rf7b
 8SSz45J6faQ6_jllJmDWO5dhsR9nilgBJFmxKq5aA35pFaSjp57cXsy_MNkPZxcN482zzNcc1Giy
 s3WwoHfTdONdd9lUd.U6nkuM9NMsj5YNwRz9ptB3y0SRjiSFt7_CYIpxVQ821BWoehqJRhgUxRFo
 yBWMyKkW99w43nucRDUmedqxVCzRBloxgpk_Ilgw9BspdedZPcuww5mQqLwjuSKcEnbb5_oheEk5
 hnrNzttTbWf6dAjgEJQVyIw9bwOfIluuJ3YkJ2ukr5iUStognBOy1UZ9yPvNqxNunbmJxFnIODg-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.gq1.yahoo.com with HTTP; Tue, 17 Nov 2020 07:42:51 +0000
Received: by smtp413.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID c449135bb3cd762619d09c8b8ed176b2;
          Tue, 17 Nov 2020 07:42:46 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: "chuck kamas" <chuckkamas@yahoo.com>
Subject: Raspberry PI enabling MMC1
Message-ID: <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
Date: Mon, 16 Nov 2020 23:42:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
X-Mailer: WebService/1.1.16944 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,


I have been spinning my wheels for two days trying to discover how to 
enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian 
on the CM3 and it inits the MMC1 and its pins just fine. I can 
read/write to my SD card from it etc. However, when I build yocto it 
leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.  
I have tried changing the device tree as described here:

https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto

That compiles and add the .dtbo to my build, but still the GPIOS are not 
set to MMC1 mode.

> cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
> Pinmux settings per pin
> Format: pin (name): mux_owner gpio_owner hog?
> ....
>
> pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>
> .....
>
I have looked at:

https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/


Any ideas of where to look next to turn on the sdio would be appreciated!


Chuck


